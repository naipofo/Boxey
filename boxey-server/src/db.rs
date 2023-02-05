use sea_orm::{ActiveModelTrait, ColumnTrait, DbConn, EntityTrait, ModelTrait, QueryFilter, Set};
use server_db_entity::{package, session, user};
use uuid::Uuid;

#[derive(Debug)]
pub struct BoxeyDatabase {
    db: DbConn,
}
impl BoxeyDatabase {
    pub fn new(db: DbConn) -> Self {
        Self { db }
    }

    pub async fn get_for_user(&self, user: i32) -> Result<Vec<package::Model>, DbError> {
        Ok(user::Entity::find_by_id(user)
            .one(&self.db)
            .await?
            .ok_or(DbError::NotFound)?
            .find_related(package::Entity)
            .all(&self.db)
            .await?)
    }

    pub async fn get_session_user(&self, secret: &str) -> Result<i32, DbError> {
        session::Entity::find()
            .filter(session::Column::Secret.contains(secret))
            .one(&self.db)
            .await?
            .map(|e| e.user_id)
            .ok_or(DbError::NotFound)
    }

    // TODO: replace with a custom error type
    pub async fn register_user(&self, user: &str) -> Result<String, DbError> {
        let u = user::Entity::find()
            .filter(user::Column::Nickname.contains(user))
            .one(&self.db)
            .await?;

        // TODO: Store uid in secret
        let secret = Uuid::new_v4().to_string();

        // TODO: implement some kind of auth

        session::ActiveModel {
            user_id: Set(match u {
                Some(e) => e.id,
                None => {
                    user::ActiveModel {
                        nickname: Set(user.to_string()),
                        ..Default::default()
                    }
                    .insert(&self.db)
                    .await
                    .map_err(|_| DbError::DatabaseError)?
                    .id
                }
            }),
            secret: Set(secret.clone()),
            ..Default::default()
        }
        .insert(&self.db)
        .await?;

        Ok(secret)
    }
}

#[derive(Debug)]
pub enum DbError {
    DatabaseError,
    NotFound,
}

impl From<sea_orm::DbErr> for DbError {
    fn from(_: sea_orm::DbErr) -> Self {
        DbError::DatabaseError
    }
}
