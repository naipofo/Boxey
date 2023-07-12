use strum_macros::EnumString;

use crate::protos::boxey::packages::StatusTypeUser;

#[derive(Debug, EnumString)]
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
