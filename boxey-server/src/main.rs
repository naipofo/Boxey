mod protos;
use protos::boxey::packages::{
    packages_server::{Packages, PackagesServer},
    PackageReply, PackageRequest,
};
use tonic::codec::CompressionEncoding;
use tonic::{transport::Server, Request, Response, Status};

use crate::protos::boxey::packages::Package;
#[derive(Debug, Default)]
pub struct PackageService {}

#[tonic::async_trait]
impl Packages for PackageService {
    async fn list_packages(
        &self,
        request: Request<PackageRequest>,
    ) -> Result<Response<PackageReply>, Status> {
        println!("Got a request: {:?}", request);

        let reply = PackageReply {
            packages: vec![Package {
                title: "new t-shirt".to_string(),
                weight: 300,
            }],
        };

        Ok(Response::new(reply))
    }
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let addr = "[::1]:50051".parse()?;
    let greeter = PackageService::default();

    Server::builder()
        .add_service(
            PackagesServer::new(greeter)
                .send_compressed(CompressionEncoding::Gzip)
                .accept_compressed(CompressionEncoding::Gzip),
        )
        .serve(addr)
        .await?;

    Ok(())
}
