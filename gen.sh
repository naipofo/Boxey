SRC_DIR="proto/boxey"
DST_DIR="boxey-flutter/lib/protos"
protoc -I=$SRC_DIR --dart_out=grpc:$DST_DIR $SRC_DIR/*.proto  google/protobuf/timestamp.proto

export DATABASE_URL="sqlite:./boxeydb.sqlite3?mode=rwc"

cd boxey-flutter
dart run build_runner watch
