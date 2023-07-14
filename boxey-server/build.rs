use std::io::Result;
fn main() -> Result<()> {
    tonic_build::compile_protos("../proto/boxey/auth.proto")?;
    tonic_build::compile_protos("../proto/boxey/lockers.proto")?;
    tonic_build::compile_protos("../proto/boxey/packages.proto")?;
    tonic_build::compile_protos("../proto/boxey/sending.proto")?;
    tonic_build::compile_protos("../proto/boxey/webtrack.proto")?;
    Ok(())
}
