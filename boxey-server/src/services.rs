use crate::{
    protos::boxey::packages::{packages_server::Packages, Package, PackageReply, PackageRequest},
    BoxeyDatabase,
};
use std::sync::Arc;
use tonic::{Request, Response, Status};

#[derive(Debug)]
pub struct PackageService {
    pub db: Arc<BoxeyDatabase>,
}

#[tonic::async_trait]
impl Packages for PackageService {
    async fn list_packages(
        &self,
        request: Request<PackageRequest>,
    ) -> Result<Response<PackageReply>, Status> {
        println!("Got a request: {:?}", request);
        let user_packages = self.db.get_for_user(&request.get_ref().user).await.unwrap();

        Ok(Response::new(PackageReply {
            packages: user_packages
                .into_iter()
                .map(|e| Package {
                    id: e.id,
                    title: e.title,
                    weight: e.weight,
                })
                .collect(),
        }))
    }
}
