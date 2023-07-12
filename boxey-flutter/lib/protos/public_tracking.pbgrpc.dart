//
//  Generated code. Do not modify.
//  source: public_tracking.proto
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

import 'public_tracking.pb.dart' as $2;

export 'public_tracking.pb.dart';

@$pb.GrpcServiceName('boxey.public_tracking.PublicTracking')
class PublicTrackingClient extends $grpc.Client {
  static final _$packageTrack = $grpc.ClientMethod<$2.PackageTrackRequest, $2.PackageTrackReply>(
      '/boxey.public_tracking.PublicTracking/PackageTrack',
      ($2.PackageTrackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PackageTrackReply.fromBuffer(value));

  PublicTrackingClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.PackageTrackReply> packageTrack($2.PackageTrackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$packageTrack, request, options: options);
  }
}

@$pb.GrpcServiceName('boxey.public_tracking.PublicTracking')
abstract class PublicTrackingServiceBase extends $grpc.Service {
  $core.String get $name => 'boxey.public_tracking.PublicTracking';

  PublicTrackingServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.PackageTrackRequest, $2.PackageTrackReply>(
        'PackageTrack',
        packageTrack_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PackageTrackRequest.fromBuffer(value),
        ($2.PackageTrackReply value) => value.writeToBuffer()));
  }

  $async.Future<$2.PackageTrackReply> packageTrack_Pre($grpc.ServiceCall call, $async.Future<$2.PackageTrackRequest> request) async {
    return packageTrack(call, await request);
  }

  $async.Future<$2.PackageTrackReply> packageTrack($grpc.ServiceCall call, $2.PackageTrackRequest request);
}
