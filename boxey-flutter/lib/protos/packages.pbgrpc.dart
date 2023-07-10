//
//  Generated code. Do not modify.
//  source: packages.proto
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

import 'packages.pb.dart' as $1;

export 'packages.pb.dart';

@$pb.GrpcServiceName('boxey.packages.Packages')
class PackagesClient extends $grpc.Client {
  static final _$packageList = $grpc.ClientMethod<$1.PackageListRequest, $1.PackageListReply>(
      '/boxey.packages.Packages/PackageList',
      ($1.PackageListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PackageListReply.fromBuffer(value));
  static final _$packageDetails = $grpc.ClientMethod<$1.PackageDetailsRequest, $1.PackageDetailsReply>(
      '/boxey.packages.Packages/PackageDetails',
      ($1.PackageDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PackageDetailsReply.fromBuffer(value));

  PackagesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.PackageListReply> packageList($1.PackageListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$packageList, request, options: options);
  }

  $grpc.ResponseFuture<$1.PackageDetailsReply> packageDetails($1.PackageDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$packageDetails, request, options: options);
  }
}

@$pb.GrpcServiceName('boxey.packages.Packages')
abstract class PackagesServiceBase extends $grpc.Service {
  $core.String get $name => 'boxey.packages.Packages';

  PackagesServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.PackageListRequest, $1.PackageListReply>(
        'PackageList',
        packageList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PackageListRequest.fromBuffer(value),
        ($1.PackageListReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PackageDetailsRequest, $1.PackageDetailsReply>(
        'PackageDetails',
        packageDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PackageDetailsRequest.fromBuffer(value),
        ($1.PackageDetailsReply value) => value.writeToBuffer()));
  }

  $async.Future<$1.PackageListReply> packageList_Pre($grpc.ServiceCall call, $async.Future<$1.PackageListRequest> request) async {
    return packageList(call, await request);
  }

  $async.Future<$1.PackageDetailsReply> packageDetails_Pre($grpc.ServiceCall call, $async.Future<$1.PackageDetailsRequest> request) async {
    return packageDetails(call, await request);
  }

  $async.Future<$1.PackageListReply> packageList($grpc.ServiceCall call, $1.PackageListRequest request);
  $async.Future<$1.PackageDetailsReply> packageDetails($grpc.ServiceCall call, $1.PackageDetailsRequest request);
}
