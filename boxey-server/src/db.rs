use sea_orm::{ColumnTrait, DbConn, EntityTrait, QueryFilter};
use server_db_entity::package;

#[derive(Debug)]
pub struct BoxeyDatabase {
    db: DbConn,
}
impl BoxeyDatabase {
    pub fn new(db: DbConn) -> Self {
        Self { db }
    }

    pub async fn get_for_user(&self, user: &str) -> Result<Vec<package::Model>, sea_orm::DbErr> {
        package::Entity::find()
            .filter(package::Column::Recipient.contains(user))
            .all(&self.db)
            .await
    }
}
