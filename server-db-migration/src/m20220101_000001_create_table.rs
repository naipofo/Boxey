use sea_orm_migration::prelude::*;

#[derive(DeriveMigrationName)]
pub struct Migration;

#[async_trait::async_trait]
impl MigrationTrait for Migration {
    async fn up(&self, manager: &SchemaManager) -> Result<(), DbErr> {
        manager
            .create_table(
                Table::create()
                    .table(Package::Table)
                    .if_not_exists()
                    .col(
                        ColumnDef::new(Package::UId)
                            .string()
                            .not_null()
                            .primary_key(),
                    )
                    .col(ColumnDef::new(Package::Sender).string().not_null())
                    .to_owned(),
            )
            .await?;
        manager
            .create_table(
                Table::create()
                    .table(User::Table)
                    .if_not_exists()
                    .col(
                        ColumnDef::new(User::Id)
                            .integer()
                            .not_null()
                            .auto_increment()
                            .primary_key(),
                    )
                    .col(ColumnDef::new(User::Nickname).string().not_null())
                    .to_owned(),
            )
            .await?;
        manager
            .create_table(
                Table::create()
                    .table(UserPackage::Table)
                    .if_not_exists()
                    .col(ColumnDef::new(UserPackage::UserId).integer().not_null())
                    .col(ColumnDef::new(UserPackage::PackageUid).string().not_null())
                    .primary_key(
                        Index::create()
                            .col(UserPackage::UserId)
                            .col(UserPackage::PackageUid),
                    )
                    .foreign_key(
                        ForeignKeyCreateStatement::new()
                            .from(UserPackage::Table, UserPackage::UserId)
                            .to(User::Table, User::Id),
                    )
                    .foreign_key(
                        ForeignKeyCreateStatement::new()
                            .from(UserPackage::Table, UserPackage::PackageUid)
                            .to(Package::Table, Package::UId),
                    )
                    .to_owned(),
            )
            .await?;
        manager
            .create_table(
                Table::create()
                    .table(Events::Table)
                    .if_not_exists()
                    .col(
                        ColumnDef::new(Events::UId)
                            .string()
                            .not_null()
                            .primary_key(),
                    )
                    .col(ColumnDef::new(Events::PackageUid).string().not_null())
                    .col(
                        ColumnDef::new(Events::Type)
                            .enumeration(
                                EventEnum::Enum,
                                [
                                    EventEnum::Prepared,
                                    EventEnum::HandedOver,
                                    EventEnum::InTransit,
                                    EventEnum::InCenter,
                                    EventEnum::Ready,
                                    EventEnum::Recived,
                                ],
                            )
                            .not_null(),
                    )
                    .col(ColumnDef::new(Events::Time).string().not_null())
                    .col(ColumnDef::new(Events::Location).string().not_null())
                    .foreign_key(
                        ForeignKeyCreateStatement::new()
                            .from(Events::Table, Events::PackageUid)
                            .to(Package::Table, Package::UId),
                    )
                    .to_owned(),
            )
            .await?;
        manager
            .create_table(
                Table::create()
                    .table(Session::Table)
                    .if_not_exists()
                    .col(
                        ColumnDef::new(Session::Id)
                            .integer()
                            .not_null()
                            .auto_increment()
                            .primary_key(),
                    )
                    .col(ColumnDef::new(Session::UserId).integer().not_null())
                    .col(ColumnDef::new(Session::Secret).string().not_null())
                    .foreign_key(
                        ForeignKeyCreateStatement::new()
                            .from(Session::Table, Session::UserId)
                            .to(User::Table, User::Id),
                    )
                    .to_owned(),
            )
            .await
    }

    async fn down(&self, manager: &SchemaManager) -> Result<(), DbErr> {
        manager
            .drop_table(Table::drop().table(Package::Table).to_owned())
            .await?;
        manager
            .drop_table(Table::drop().table(User::Table).to_owned())
            .await
    }
}

#[derive(Iden)]
enum Package {
    Table,
    UId,
    Sender,
}

#[derive(Iden)]
enum User {
    Table,
    Id,
    Nickname,
}

#[derive(Iden)]
enum UserPackage {
    Table,
    UserId,
    PackageUid,
}

#[derive(Iden)]
enum Events {
    Table,
    UId,
    PackageUid,
    Type,
    Time,
    Location,
}

#[derive(Iden)]
enum EventEnum {
    Enum,
    Prepared,
    HandedOver,
    InTransit,
    InCenter,
    Ready,
    Recived,
}

#[derive(Iden)]
enum Session {
    Table,
    Id,
    UserId,
    Secret,
}
