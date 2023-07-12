SRC_DIR="proto/boxey"
DART_DST_DIR="boxey-flutter/lib/protos"
protoc -I=$SRC_DIR --dart_out=grpc:$DART_DST_DIR $SRC_DIR/*.proto google/protobuf/timestamp.proto

export DATABASE_URL="sqlite:./boxeydb.sqlite3?mode=rwc"

PATH=$PATH:$(pwd)/boxey-web/node_modules/.bin
ES_DST_DIR="boxey-web/src/lib/proto"
protoc -I $SRC_DIR \
  --es_out $ES_DST_DIR --es_opt target=ts \
  --connect-es_out $ES_DST_DIR --connect-es_opt target=ts \
  $SRC_DIR/*.proto google/protobuf/timestamp.proto

cd boxey-flutter
dart run build_runner watch
