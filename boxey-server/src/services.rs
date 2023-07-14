use crate::{
    protos::boxey::{
        auth::{
            user_auth_server::UserAuth, user_register_reply::RegisterReply, UserRegisterReply,
            UserRegisterRequest,
        },
        lockers::{lockers_server::Lockers, Locker, LockersListRequest, LockersListerReply},
        packages::{
            packages_server::Packages, PackageDetailsReply, PackageDetailsRequest, PackageHeader,
            PackageListReply, PackageListRequest, PickupDetails, StatusDetails, StatusTypeUser,
        },
        sending::{
            package_sending_server::PackageSending, PackageSendReply, PackageSendRequest, Size,
            SizeListReply, SizeListRequest,
        },
        webtrack::{web_track_server::WebTrack, TrackPackageReply, TrackPackageRequest},
    },
    BoxeyDatabase,
};
use prost_types::Timestamp;
use std::{str::FromStr, sync::Arc};
use tokio::sync::Mutex;
use tonic::{Request, Response, Status};

#[derive(Debug)]
pub struct PackageService {
    pub db: Arc<Mutex<BoxeyDatabase>>,
}

async fn auth_user<T>(request: &Request<T>, db: Arc<Mutex<BoxeyDatabase>>) -> Result<i64, Status> {
    let secret = request
        .metadata()
        .get("auth")
        .map(|e| e.to_str().ok())
        .flatten()
        .ok_or::<Status>(ServiceError::BadAuth.into())?;
    db.lock()
        .await
        .get_session_user(secret)
        .map_err::<Status, _>(|_| ServiceError::DbError.into())
}

#[tonic::async_trait]
impl Packages for PackageService {
    async fn package_list(
        &self,
        request: Request<PackageListRequest>,
    ) -> Result<Response<PackageListReply>, Status> {
        let user = auth_user(&request, self.db.clone()).await?;
        let recipient_packages = self
            .db
            .lock()
            .await
            .get_for_user(user)
            .map_err::<Status, _>(|_| ServiceError::DbError.into())?;

        Ok(Response::new(PackageListReply {
            packages: recipient_packages
                .into_iter()
                .map(|(package, event)| PackageHeader {
                    uid: package.u_id,
                    sender: package.sender,
                    status: StatusTypeUser::from(event).into(),
                })
                .collect(),
        }))
    }

    async fn package_details(
        &self,
        request: Request<PackageDetailsRequest>,
    ) -> Result<Response<PackageDetailsReply>, Status> {
        let user = auth_user(&request, self.db.clone()).await?;
        let (package, events) = self
            .db
            .lock()
            .await
            .get_package_detials(user, &request.get_ref().uid)
            .map_err::<Status, _>(|_| ServiceError::DbError.into())?;
        let pickup = self
            .db
            .lock()
            .await
            .get_package_pickup_code(&package.u_id)
            .map(|code| PickupDetails { code });
        Ok(Response::new(PackageDetailsReply {
            header: Some(PackageHeader {
                uid: package.u_id.clone(),
                sender: package.sender,
                status: 0,
            }),
            pickup,
            status: events
                .into_iter()
                .map(|e| StatusDetails {
                    r#type: StatusTypeUser::from(e.event_type).into(),
                    time: Some(Timestamp::from_str(&e.time).unwrap()),
                })
                .collect(),
        }))
    }
}

#[derive(Debug)]
pub struct LockerService {
    pub db: Arc<Mutex<BoxeyDatabase>>,
}

#[tonic::async_trait]
impl Lockers for LockerService {
    async fn lockers_list(
        &self,
        _: Request<LockersListRequest>,
    ) -> Result<Response<LockersListerReply>, Status> {
        Ok(Response::new(LockersListerReply {
            lockers: self
                .db
                .lock()
                .await
                .get_lockers()
                .map_err::<Status, _>(|_| ServiceError::DbError.into())?
                .into_iter()
                .map(|l| Locker {
                    id: l.id,
                    location: l.location,
                    location_human: l.location_human,
                })
                .collect(),
        }))
    }
}

#[derive(Debug)]
pub struct AuthService {
    pub db: Arc<Mutex<BoxeyDatabase>>,
}

#[tonic::async_trait]
impl UserAuth for AuthService {
    async fn register(
        &self,
        request: Request<UserRegisterRequest>,
    ) -> Result<Response<UserRegisterReply>, Status> {
        Ok(Response::new(UserRegisterReply {
            register_reply: Some(
                match self
                    .db
                    .lock()
                    .await
                    .register_user(&request.get_ref().nickname)
                {
                    Ok(e) => RegisterReply::SessionAuth(e),
                    Err(e) => RegisterReply::ErrorMessage(format!("{e:?}")),
                },
            ),
        }))
    }
}

#[derive(Debug)]
pub struct WebTrackService {
    pub db: Arc<Mutex<BoxeyDatabase>>,
}

#[tonic::async_trait]
impl WebTrack for WebTrackService {
    async fn track_package(
        &self,
        request: Request<TrackPackageRequest>,
    ) -> Result<Response<TrackPackageReply>, Status> {
        Ok(Response::new(TrackPackageReply {
            status: self
                .db
                .lock()
                .await
                .get_package_events(&request.get_ref().uid)
                .map_err::<Status, _>(|_| ServiceError::DbError.into())?
                .into_iter()
                .map(|e| StatusDetails {
                    r#type: StatusTypeUser::from(e.event_type).into(),
                    time: Some(Timestamp::from_str(&e.time).unwrap()),
                })
                .collect(),
        }))
    }
}

#[derive(Debug)]
pub struct SendingService {
    pub db: Arc<Mutex<BoxeyDatabase>>,
}
#[tonic::async_trait]
impl PackageSending for SendingService {
    async fn package_send(
        &self,
        request: Request<PackageSendRequest>,
    ) -> Result<Response<PackageSendReply>, Status> {
        let user = auth_user(&request, self.db.clone()).await;
        let p = request.get_ref();
        self.db
            .lock()
            .await
            .send_package(
                &p.uid,
                &p.size_id,
                &p.sender,
                &p.destination_id,
                user.ok(),
                p.recipient_nickname.as_deref(),
            )
            .map_err::<Status, _>(|_| ServiceError::DbError.into())?;
        Ok(Response::new(PackageSendReply {}))
    }
    async fn size_list(
        &self,
        _request: Request<SizeListRequest>,
    ) -> Result<Response<SizeListReply>, Status> {
        Ok(Response::new(SizeListReply {
            sizes: self
                .db
                .lock()
                .await
                .get_sizes()
                .map_err::<Status, _>(|_| ServiceError::DbError.into())?
                .into_iter()
                .map(|s| Size {
                    id: s.id,
                    size: s.size,
                })
                .collect(),
        }))
    }
}

enum ServiceError {
    DbError,
    BadAuth,
}

impl Into<Status> for ServiceError {
    fn into(self) -> Status {
        match self {
            ServiceError::DbError => Status::internal("Database Error"),
            ServiceError::BadAuth => Status::unauthenticated("No valid auth token"),
        }
    }
}
