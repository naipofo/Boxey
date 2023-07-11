mod model;
mod protos;
mod services;
use db::BoxeyDatabase;
use protos::boxey::auth::user_auth_server::UserAuthServer;
use protos::boxey::packages::packages_server::PackagesServer;
use services::{AuthService, PackageService};
use std::sync::Arc;
use tokio::sync::Mutex;
use tonic::codec::CompressionEncoding;
use tonic::transport::Server;

mod db;

const DB_URL: &str = "./boxeydb.sqlite3";

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let addr = "[::1]:50051".parse()?;

    let db = BoxeyDatabase::open_or_create(DB_URL);

    let boxey_db = Arc::new(Mutex::new(db.unwrap()));

    let package_service = PackageService {
        db: boxey_db.clone(),
    };
    let auth_service: AuthService = AuthService {
        db: boxey_db.clone(),
    };

    Server::builder()
        .add_service(
            PackagesServer::new(package_service)
                .send_compressed(CompressionEncoding::Gzip)
                .accept_compressed(CompressionEncoding::Gzip),
        )
        .add_service(
            UserAuthServer::new(auth_service)
                .send_compressed(CompressionEncoding::Gzip)
                .accept_compressed(CompressionEncoding::Gzip),
        )
        .serve(addr)
        .await?;

    Ok(())
}
