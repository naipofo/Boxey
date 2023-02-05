///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'auth.pb.dart' as $0;
export 'auth.pb.dart';

class UserAuthClient extends $grpc.Client {
  static final _$register =
      $grpc.ClientMethod<$0.UserRegisterRequest, $0.UserRegisterReply>(
          '/boxey.auth.UserAuth/Register',
          ($0.UserRegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserRegisterReply.fromBuffer(value));

  UserAuthClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserRegisterReply> register(
      $0.UserRegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }
}

abstract class UserAuthServiceBase extends $grpc.Service {
  $core.String get $name => 'boxey.auth.UserAuth';

  UserAuthServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.UserRegisterRequest, $0.UserRegisterReply>(
            'Register',
            register_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UserRegisterRequest.fromBuffer(value),
            ($0.UserRegisterReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserRegisterReply> register_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserRegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.UserRegisterReply> register(
      $grpc.ServiceCall call, $0.UserRegisterRequest request);
}
