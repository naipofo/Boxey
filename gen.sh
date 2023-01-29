SRC_DIR="protos"
DST_DIR="boxey-flutter/lib/protos"
protoc -I=$SRC_DIR --dart_out=grpc:$DST_DIR $SRC_DIR/*.proto 

cd boxey-flutter
flutter pub run build_runner watch