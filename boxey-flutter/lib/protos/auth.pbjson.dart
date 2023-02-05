///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userRegisterRequestDescriptor instead')
const UserRegisterRequest$json = const {
  '1': 'UserRegisterRequest',
  '2': const [
    const {'1': 'nickname', '3': 1, '4': 1, '5': 9, '10': 'nickname'},
  ],
};

/// Descriptor for `UserRegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegisterRequestDescriptor = $convert.base64Decode('ChNVc2VyUmVnaXN0ZXJSZXF1ZXN0EhoKCG5pY2tuYW1lGAEgASgJUghuaWNrbmFtZQ==');
@$core.Deprecated('Use userRegisterReplyDescriptor instead')
const UserRegisterReply$json = const {
  '1': 'UserRegisterReply',
  '2': const [
    const {'1': 'error_message', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'errorMessage'},
    const {'1': 'session_auth', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'sessionAuth'},
  ],
  '8': const [
    const {'1': 'register_reply'},
  ],
};

/// Descriptor for `UserRegisterReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegisterReplyDescriptor = $convert.base64Decode('ChFVc2VyUmVnaXN0ZXJSZXBseRIlCg1lcnJvcl9tZXNzYWdlGAEgASgJSABSDGVycm9yTWVzc2FnZRIjCgxzZXNzaW9uX2F1dGgYAiABKAlIAFILc2Vzc2lvbkF1dGhCEAoOcmVnaXN0ZXJfcmVwbHk=');
