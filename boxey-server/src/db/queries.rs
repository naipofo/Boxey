use std::str::FromStr;

use rusqlite::{params, Row};
use time::format_description::well_known::Rfc3339;
use uuid::Uuid;

use crate::model::{Event, EventEnum, Locker, Package, Size};

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
    pub fn get_lockers(&self) -> Result<Vec<Locker>> {
        self.db
            .prepare_cached("SELECT id, location, location_human FROM locker")?
            .query_and_then([], |r| row_to_locker(&r))?
            .collect()
    }
    pub fn send_package(
        &self,
        uid: &str,
        size: &i64,
        sender_str: &str,
        destination: &str,
        sender: Option<i64>,
        recipient: Option<&str>,
    ) -> Result<()> {
        // TODO: execure as transaction
        self.db.execute(
            "INSERT INTO package(u_id, sender, destination_id, size_id) VALUES (?,?,?,?)",
            params![uid, sender_str, destination, size],
        )?;
        if let Some(s) = sender {
            self.db.execute(
                "INSERT INTO sender_package(user_id, package_uid) VALUES (?,?)",
                params![s, uid],
            )?;
        }
        if let Some(r) = recipient {
            self.db.execute(
                "INSERT INTO recipient_package(user_id, package_uid) VALUES ((SELECT id FROM user WHERE nickname = ?),?)", 
                params![r, uid]
            )?;
        }
        self.db.execute(
            "INSERT INTO event(u_id, package_uid, event_type, time) VALUES (?,?,?,?)",
            params![
                Uuid::new_v4().to_string(),
                uid,
                EventEnum::Prepared.to_string(),
                time::OffsetDateTime::now_utc().format(&Rfc3339).unwrap()
            ],
        )?;
        Ok(())
    }
    pub fn get_sizes(&self) -> Result<Vec<Size>> {
        self.db
            .prepare_cached("SELECT id, size FROM size")?
            .query_and_then([], |r| row_to_size(&r))?
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

fn row_to_locker(row: &Row) -> Result<Locker> {
    Ok(Locker {
        id: row.get(0)?,
        location: row.get(1)?,
        location_human: row.get(2)?,
    })
}
fn row_to_size(row: &Row) -> Result<Size> {
    Ok(Size {
        id: row.get(0)?,
        size: row.get(1)?,
    })
}
