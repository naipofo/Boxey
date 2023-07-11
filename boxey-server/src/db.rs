mod queries;
mod upgrades;

use std::path::Path;

use rusqlite::Connection;

#[derive(Debug)]
pub struct BoxeyDatabase {
    pub db: Connection,
}

#[derive(Debug)]
pub enum DbError {
    DatabaseError,
    NoAccess,
    DataError,
}

impl From<rusqlite::Error> for DbError {
    fn from(_: rusqlite::Error) -> Self {
        Self::DatabaseError
    }
}

impl From<strum::ParseError> for DbError {
    fn from(_: strum::ParseError) -> Self {
        Self::DataError
    }
}

type Result<T> = std::result::Result<T, DbError>;

impl BoxeyDatabase {
    pub fn open_or_create(db_url: &str) -> Result<Self> {
        let db = Self {
            db: Connection::open(Path::new(db_url))?,
        };
        db.update_to_latest()?;
        Ok(db)
    }
}
