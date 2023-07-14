pub mod boxey {
    pub mod packages {
        tonic::include_proto!("boxey.packages");
    }
    pub mod lockers {
        tonic::include_proto!("boxey.lockers");
    }
    pub mod auth {
        tonic::include_proto!("boxey.auth");
    }
    pub mod sending {
        tonic::include_proto!("boxey.sending");
    }
    pub mod webtrack {
        tonic::include_proto!("boxey.webtrack");
    }
}
