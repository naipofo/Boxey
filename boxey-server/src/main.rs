mod protos;
mod services;
use db::BoxeyDatabase;
use migration::{Migrator, MigratorTrait};
use protos::boxey::packages::packages_server::PackagesServer;
use sea_orm::{Database, DatabaseConnection};
use services::PackageService;
use std::sync::Arc;
use tonic::codec::CompressionEncoding;
use tonic::transport::Server;

mod db;

const DB_URL: &str = "sqlite:./boxeydb.sqlite3?mode=rwc";

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let addr = "[::1]:50051".parse()?;

    let db: DatabaseConnection = Database::connect(DB_URL).await.unwrap();
    Migrator::up(&db, None).await.unwrap();

    let boxey_db = Arc::new(BoxeyDatabase::new(db));

    let package_service = PackageService { db: boxey_db };

    Server::builder()
        .add_service(
            PackagesServer::new(package_service)
                .send_compressed(CompressionEncoding::Gzip)
                .accept_compressed(CompressionEncoding::Gzip),
        )
        .serve(addr)
        .await?;

    Ok(())
}
