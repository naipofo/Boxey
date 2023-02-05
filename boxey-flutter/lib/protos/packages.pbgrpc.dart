///
//  Generated code. Do not modify.
//  source: packages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'packages.pb.dart' as $1;
export 'packages.pb.dart';

class PackagesClient extends $grpc.Client {
  static final _$listPackages =
      $grpc.ClientMethod<$1.PackageRequest, $1.PackageReply>(
          '/boxey.packages.Packages/ListPackages',
          ($1.PackageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.PackageReply.fromBuffer(value));

  PackagesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.PackageReply> listPackages($1.PackageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPackages, request, options: options);
  }
}

abstract class PackagesServiceBase extends $grpc.Service {
  $core.String get $name => 'boxey.packages.Packages';

  PackagesServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.PackageRequest, $1.PackageReply>(
        'ListPackages',
        listPackages_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PackageRequest.fromBuffer(value),
        ($1.PackageReply value) => value.writeToBuffer()));
  }

  $async.Future<$1.PackageReply> listPackages_Pre(
      $grpc.ServiceCall call, $async.Future<$1.PackageRequest> request) async {
    return listPackages(call, await request);
  }

  $async.Future<$1.PackageReply> listPackages(
      $grpc.ServiceCall call, $1.PackageRequest request);
}
