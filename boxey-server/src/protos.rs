pub mod boxey {
    pub mod packages {
        tonic::include_proto!("boxey.packages");
    }
    pub mod auth {
        tonic::include_proto!("boxey.auth");
    }
    pub mod webtrack{
        tonic::include_proto!("boxey.webtrack");
    }
}
