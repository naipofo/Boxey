//
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userRegisterRequestDescriptor instead')
const UserRegisterRequest$json = {
  '1': 'UserRegisterRequest',
  '2': [
    {'1': 'nickname', '3': 1, '4': 1, '5': 9, '10': 'nickname'},
  ],
};

/// Descriptor for `UserRegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegisterRequestDescriptor = $convert.base64Decode(
    'ChNVc2VyUmVnaXN0ZXJSZXF1ZXN0EhoKCG5pY2tuYW1lGAEgASgJUghuaWNrbmFtZQ==');

@$core.Deprecated('Use userRegisterReplyDescriptor instead')
const UserRegisterReply$json = {
  '1': 'UserRegisterReply',
  '2': [
    {'1': 'error_message', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'errorMessage'},
    {'1': 'session_auth', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'sessionAuth'},
  ],
  '8': [
    {'1': 'register_reply'},
  ],
};

/// Descriptor for `UserRegisterReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegisterReplyDescriptor = $convert.base64Decode(
    'ChFVc2VyUmVnaXN0ZXJSZXBseRIlCg1lcnJvcl9tZXNzYWdlGAEgASgJSABSDGVycm9yTWVzc2'
    'FnZRIjCgxzZXNzaW9uX2F1dGgYAiABKAlIAFILc2Vzc2lvbkF1dGhCEAoOcmVnaXN0ZXJfcmVw'
    'bHk=');

