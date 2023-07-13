//
//  Generated code. Do not modify.
//  source: lockers.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'lockers.pb.dart' as $1;

export 'lockers.pb.dart';

@$pb.GrpcServiceName('boxey.lockers.Lockers')
class LockersClient extends $grpc.Client {
  static final _$lockersList = $grpc.ClientMethod<$1.LockersListRequest, $1.LockersListerReply>(
      '/boxey.lockers.Lockers/LockersList',
      ($1.LockersListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.LockersListerReply.fromBuffer(value));

  LockersClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.LockersListerReply> lockersList($1.LockersListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$lockersList, request, options: options);
  }
}

@$pb.GrpcServiceName('boxey.lockers.Lockers')
abstract class LockersServiceBase extends $grpc.Service {
  $core.String get $name => 'boxey.lockers.Lockers';

  LockersServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.LockersListRequest, $1.LockersListerReply>(
        'LockersList',
        lockersList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LockersListRequest.fromBuffer(value),
        ($1.LockersListerReply value) => value.writeToBuffer()));
  }

  $async.Future<$1.LockersListerReply> lockersList_Pre($grpc.ServiceCall call, $async.Future<$1.LockersListRequest> request) async {
    return lockersList(call, await request);
  }

  $async.Future<$1.LockersListerReply> lockersList($grpc.ServiceCall call, $1.LockersListRequest request);
}
