//
//  Generated code. Do not modify.
//  source: sending.proto
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

import 'sending.pb.dart' as $3;

export 'sending.pb.dart';

@$pb.GrpcServiceName('boxey.sending.PackageSending')
class PackageSendingClient extends $grpc.Client {
  static final _$packageSend = $grpc.ClientMethod<$3.PackageSendRequest, $3.PackageSendReply>(
      '/boxey.sending.PackageSending/PackageSend',
      ($3.PackageSendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.PackageSendReply.fromBuffer(value));
  static final _$sizeList = $grpc.ClientMethod<$3.SizeListRequest, $3.SizeListReply>(
      '/boxey.sending.PackageSending/SizeList',
      ($3.SizeListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.SizeListReply.fromBuffer(value));

  PackageSendingClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.PackageSendReply> packageSend($3.PackageSendRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$packageSend, request, options: options);
  }

  $grpc.ResponseFuture<$3.SizeListReply> sizeList($3.SizeListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sizeList, request, options: options);
  }
}

@$pb.GrpcServiceName('boxey.sending.PackageSending')
abstract class PackageSendingServiceBase extends $grpc.Service {
  $core.String get $name => 'boxey.sending.PackageSending';

  PackageSendingServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.PackageSendRequest, $3.PackageSendReply>(
        'PackageSend',
        packageSend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.PackageSendRequest.fromBuffer(value),
        ($3.PackageSendReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SizeListRequest, $3.SizeListReply>(
        'SizeList',
        sizeList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.SizeListRequest.fromBuffer(value),
        ($3.SizeListReply value) => value.writeToBuffer()));
  }

  $async.Future<$3.PackageSendReply> packageSend_Pre($grpc.ServiceCall call, $async.Future<$3.PackageSendRequest> request) async {
    return packageSend(call, await request);
  }

  $async.Future<$3.SizeListReply> sizeList_Pre($grpc.ServiceCall call, $async.Future<$3.SizeListRequest> request) async {
    return sizeList(call, await request);
  }

  $async.Future<$3.PackageSendReply> packageSend($grpc.ServiceCall call, $3.PackageSendRequest request);
  $async.Future<$3.SizeListReply> sizeList($grpc.ServiceCall call, $3.SizeListRequest request);
}
