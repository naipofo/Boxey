use std::str::FromStr;

use rusqlite::{params, Row};
use uuid::Uuid;

use crate::model::{Event, EventEnum, Package};

use super::{BoxeyDatabase, Result};

impl BoxeyDatabase {
    pub fn get_for_user(&self, user: i64) -> Result<Vec<(Package, EventEnum)>> {
        self.db
            .prepare_cached(include_str!("queries/get_user_packages.sql"))?
            .query_and_then([user], |r| {
                Ok((
                    row_to_package(r)?,
                    EventEnum::from_str(&(r.get::<_, String>(2)?))?,
                    // TODO: custom error instead of unwrap
                ))
            })?
            .collect()
    }
    pub fn get_session_user(&self, secret: &str) -> Result<i64> {
        Ok(self.db.query_row(
            "SELECT user_id FROM session WHERE secret = ?",
            [secret],
            |r| r.get(0),
        )?)
    }
    pub fn register_user(&self, nickname: &str) -> Result<String> {
        let secret = Uuid::new_v4().to_string();
        // TODO: actual auth

        let u_id =
            match self
                .db
                .query_row("SELECT id FROM user WHERE nickname = ?", [nickname], |r| {
                    r.get::<_, i64>(0)
                }) {
                Ok(e) => e,
                Err(_) => {
                    self.db
                        .execute("INSERT INTO user(nickname) VALUES(?)", [nickname])?;
                    self.db.last_insert_rowid().try_into().unwrap()
                }
            };

        self.db.execute(
            include_str!("queries/add_session.sql"),
            params![u_id, &secret],
        )?;
        Ok(secret)
    }
    pub fn get_package_detials(&self, user: i64, package: &str) -> Result<(Package, Vec<Event>)> {
        if self.db.query_row(
            include_str!("queries/check_ownership.sql"),
            params![user, package],
            |r| r.get(0),
        )? {
            Ok((
                Package {
                    u_id: package.to_string(),
                    sender: self.db.query_row(
                        "SELECT sender FROM package WHERE u_id = ?",
                        [package],
                        |r| r.get(0),
                    )?,
                },
                self.db
                    .prepare_cached(
                        "SELECT u_id, event_type, time FROM event WHERE package_uid = ?",
                    )?
                    .query_and_then([package], |r| Ok(row_to_event(r)?))?
                    .collect::<Result<_>>()?,
            ))
        } else {
            Err(super::DbError::NoAccess)
        }
    }
    pub fn get_package_pickup_code(&self, package: &str) -> Option<String> {
        self.db
            .query_row(
                "SELECT unlock_code FROM filled_space WHERE package_uid = ?",
                [package],
                |r| r.get(0),
            )
            .ok()
    }
    pub fn get_package_events(&self, package: &str) -> Result<Vec<Event>> {
        self.db
            .prepare_cached("SELECT u_id, event_type, time FROM event WHERE package_uid = ?")?
            .query_and_then([package], |r| row_to_event(&r))?
            .collect()
    }
}

fn row_to_package(row: &Row) -> Result<Package> {
    Ok(Package {
        u_id: row.get(0)?,
        sender: row.get(1)?,
    })
}

fn row_to_event(row: &Row) -> Result<Event> {
    Ok(Event {
        u_id: row.get(0)?,
        event_type: EventEnum::from_str(&(row.get::<_, String>(1)?))?,
        time: row.get(2)?,
    })
}