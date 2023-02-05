use std::io::Result;
fn main() -> Result<()> {
    tonic_build::compile_protos("../protos/auth.proto")?;
    tonic_build::compile_protos("../protos/packages.proto")?;
    Ok(())
}
