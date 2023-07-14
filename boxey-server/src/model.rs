use strum_macros::{Display, EnumString};

use crate::protos::boxey::packages::StatusTypeUser;

#[derive(Debug, EnumString, Display)]
pub enum EventEnum {
    Prepared,
    HandedOver,
    InTransit,
    InCenter,
    Ready,
    Recived,
}

impl From<EventEnum> for StatusTypeUser {
    fn from(value: EventEnum) -> Self {
        match value {
            EventEnum::Prepared => StatusTypeUser::Prepared,
            EventEnum::HandedOver => StatusTypeUser::HandedOver,
            EventEnum::InTransit => StatusTypeUser::InTransit,
            EventEnum::InCenter => StatusTypeUser::InTransit,
            EventEnum::Ready => StatusTypeUser::Ready,
            EventEnum::Recived => StatusTypeUser::Received,
        }
    }
}

#[derive(Debug)]
pub struct Package {
    pub u_id: String,
    pub sender: String,
}

#[derive(Debug)]
pub struct Event {
    pub u_id: String,
    pub event_type: EventEnum,
    pub time: String,
}

#[derive(Debug)]
pub struct Locker {
    pub id: String,
    pub location: String,
    pub location_human: String,
}

#[derive(Debug)]
pub struct Size {
    pub id: i64,
    pub size: String,
}
