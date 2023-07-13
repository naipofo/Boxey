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

impl PackageService {
    async fn auth_user<T>(&self, request: &Request<T>) -> Result<i64, Status> {
        let secret = request
            .metadata()
            .get("auth")
            .map(|e| e.to_str().ok())
            .flatten()
            .ok_or::<Status>(ServiceError::BadAuth.into())?;
        self.db
            .lock()
            .await
            .get_session_user(secret)
            .map_err::<Status, _>(|_| ServiceError::DbError.into())
    }
}

#[tonic::async_trait]
impl Packages for PackageService {
    async fn package_list(
        &self,
        request: Request<PackageListRequest>,
    ) -> Result<Response<PackageListReply>, Status> {
        let user = self.auth_user(&request).await?;
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
        let user = self.auth_user(&request).await?;
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
        _request: Request<TrackPackageRequest>,
    ) -> Result<Response<TrackPackageReply>, Status> {
        Ok(Response::new(TrackPackageReply {
            status: self
                .db
                .lock()
                .await
                .get_package_events(&_request.get_ref().uid)
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
