use super::{BoxeyDatabase, Result};

impl BoxeyDatabase {
    pub fn update_to_latest(&self) -> Result<()> {
        let _version = self
            .db
            .query_row("PRAGMA user_version", [], |r| r.get::<_, i64>(0))?;
        self.db
            .execute_batch(include_str!("upgrades/schema1_upgrade.sql"))?;
        Ok(())
    }
}
