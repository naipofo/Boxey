//
//  Generated code. Do not modify.
//  source: sending.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use packageSendRequestDescriptor instead')
const PackageSendRequest$json = {
  '1': 'PackageSendRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'destination_id', '3': 2, '4': 1, '5': 9, '10': 'destinationId'},
    {'1': 'size_id', '3': 3, '4': 1, '5': 3, '10': 'sizeId'},
    {'1': 'sender', '3': 4, '4': 1, '5': 9, '10': 'sender'},
    {'1': 'recipient_nickname', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'recipientNickname', '17': true},
  ],
  '8': [
    {'1': '_recipient_nickname'},
  ],
};

/// Descriptor for `PackageSendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageSendRequestDescriptor = $convert.base64Decode(
    'ChJQYWNrYWdlU2VuZFJlcXVlc3QSEAoDdWlkGAEgASgJUgN1aWQSJQoOZGVzdGluYXRpb25faW'
    'QYAiABKAlSDWRlc3RpbmF0aW9uSWQSFwoHc2l6ZV9pZBgDIAEoA1IGc2l6ZUlkEhYKBnNlbmRl'
    'chgEIAEoCVIGc2VuZGVyEjIKEnJlY2lwaWVudF9uaWNrbmFtZRgFIAEoCUgAUhFyZWNpcGllbn'
    'ROaWNrbmFtZYgBAUIVChNfcmVjaXBpZW50X25pY2tuYW1l');

@$core.Deprecated('Use packageSendReplyDescriptor instead')
const PackageSendReply$json = {
  '1': 'PackageSendReply',
};

/// Descriptor for `PackageSendReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageSendReplyDescriptor = $convert.base64Decode(
    'ChBQYWNrYWdlU2VuZFJlcGx5');

@$core.Deprecated('Use sizeListRequestDescriptor instead')
const SizeListRequest$json = {
  '1': 'SizeListRequest',
};

/// Descriptor for `SizeListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sizeListRequestDescriptor = $convert.base64Decode(
    'Cg9TaXplTGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use sizeListReplyDescriptor instead')
const SizeListReply$json = {
  '1': 'SizeListReply',
  '2': [
    {'1': 'sizes', '3': 1, '4': 3, '5': 11, '6': '.boxey.sending.Size', '10': 'sizes'},
  ],
};

/// Descriptor for `SizeListReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sizeListReplyDescriptor = $convert.base64Decode(
    'Cg1TaXplTGlzdFJlcGx5EikKBXNpemVzGAEgAygLMhMuYm94ZXkuc2VuZGluZy5TaXplUgVzaX'
    'plcw==');

@$core.Deprecated('Use sizeDescriptor instead')
const Size$json = {
  '1': 'Size',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'size', '3': 2, '4': 1, '5': 9, '10': 'size'},
  ],
};

/// Descriptor for `Size`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sizeDescriptor = $convert.base64Decode(
    'CgRTaXplEg4KAmlkGAEgASgDUgJpZBISCgRzaXplGAIgASgJUgRzaXpl');

