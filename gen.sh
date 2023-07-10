SRC_DIR="protos"
DST_DIR="boxey-flutter/lib/protos"
protoc -I=$SRC_DIR --dart_out=grpc:$DST_DIR $SRC_DIR/*.proto  google/protobuf/timestamp.proto

export DATABASE_URL="sqlite:./boxeydb.sqlite3?mode=rwc"
cargo run --bin server-db-migration
sea-orm-cli generate entity -o server-db-entity/src --lib

cd boxey-flutter
dart run build_runner watch
