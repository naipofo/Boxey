use crate::{
    protos::boxey::{
        auth::{
            user_auth_server::UserAuth, user_register_reply::RegisterReply, UserRegisterReply,
            UserRegisterRequest,
        },
        packages::{packages_server::Packages, Package, PackageReply, PackageRequest},
    },
    BoxeyDatabase,
};
use std::sync::Arc;
use tonic::{Request, Response, Status};

#[derive(Debug)]
pub struct PackageService {
    pub db: Arc<BoxeyDatabase>,
}

impl PackageService {
    async fn auth_user<T>(&self, request: &Request<T>) -> Result<i32, Status> {
        let secret = request
            .metadata()
            .get("auth")
            .map(|e| e.to_str().ok())
            .flatten()
            .ok_or::<Status>(ServiceError::BadAuth.into())?;
        self.db
            .get_session_user(secret)
            .await
            .map_err::<Status, _>(|_| ServiceError::DbError.into())
    }
}

#[tonic::async_trait]
impl Packages for PackageService {
    async fn list_packages(
        &self,
        request: Request<PackageRequest>,
    ) -> Result<Response<PackageReply>, Status> {
        let user = self.auth_user(&request).await?;
        let user_packages = self
            .db
            .get_for_user(user)
            .await
            .map_err::<Status, _>(|_| ServiceError::DbError.into())?;

        Ok(Response::new(PackageReply {
            packages: user_packages
                .into_iter()
                .map(|e| Package {
                    uid: e.u_id,
                    title: e.title,
                    weight: e.weight,
                })
                .collect(),
        }))
    }
}

#[derive(Debug)]
pub struct AuthService {
    pub db: Arc<BoxeyDatabase>,
}

#[tonic::async_trait]
impl UserAuth for AuthService {
    async fn register(
        &self,
        request: Request<UserRegisterRequest>,
    ) -> Result<Response<UserRegisterReply>, Status> {
        Ok(Response::new(UserRegisterReply {
            register_reply: Some(
                match self.db.register_user(&request.get_ref().nickname).await {
                    Ok(e) => RegisterReply::SessionAuth(e),
                    Err(e) => RegisterReply::ErrorMessage(format!("{e:?}")),
                },
            ),
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
