//
//  Generated code. Do not modify.
//  source: webtrack.proto
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

import 'webtrack.pb.dart' as $2;

export 'webtrack.pb.dart';

@$pb.GrpcServiceName('boxey.webtrack.WebTrack')
class WebTrackClient extends $grpc.Client {
  static final _$trackPackage = $grpc.ClientMethod<$2.TrackPackageRequest, $2.TrackPackageReply>(
      '/boxey.webtrack.WebTrack/TrackPackage',
      ($2.TrackPackageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.TrackPackageReply.fromBuffer(value));

  WebTrackClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.TrackPackageReply> trackPackage($2.TrackPackageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$trackPackage, request, options: options);
  }
}

@$pb.GrpcServiceName('boxey.webtrack.WebTrack')
abstract class WebTrackServiceBase extends $grpc.Service {
  $core.String get $name => 'boxey.webtrack.WebTrack';

  WebTrackServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.TrackPackageRequest, $2.TrackPackageReply>(
        'TrackPackage',
        trackPackage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TrackPackageRequest.fromBuffer(value),
        ($2.TrackPackageReply value) => value.writeToBuffer()));
  }

  $async.Future<$2.TrackPackageReply> trackPackage_Pre($grpc.ServiceCall call, $async.Future<$2.TrackPackageRequest> request) async {
    return trackPackage(call, await request);
  }

  $async.Future<$2.TrackPackageReply> trackPackage($grpc.ServiceCall call, $2.TrackPackageRequest request);
}
