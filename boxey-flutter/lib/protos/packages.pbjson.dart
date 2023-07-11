//
//  Generated code. Do not modify.
//  source: packages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use statusTypeUserDescriptor instead')
const StatusTypeUser$json = {
  '1': 'StatusTypeUser',
  '2': [
    {'1': 'PREPARED', '2': 0},
    {'1': 'HANDED_OVER', '2': 1},
    {'1': 'IN_TRANSIT', '2': 2},
    {'1': 'READY', '2': 3},
    {'1': 'RECEIVED', '2': 4},
  ],
};

/// Descriptor for `StatusTypeUser`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusTypeUserDescriptor = $convert.base64Decode(
    'Cg5TdGF0dXNUeXBlVXNlchIMCghQUkVQQVJFRBAAEg8KC0hBTkRFRF9PVkVSEAESDgoKSU5fVF'
    'JBTlNJVBACEgkKBVJFQURZEAMSDAoIUkVDRUlWRUQQBA==');

@$core.Deprecated('Use packageListRequestDescriptor instead')
const PackageListRequest$json = {
  '1': 'PackageListRequest',
};

/// Descriptor for `PackageListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageListRequestDescriptor = $convert.base64Decode(
    'ChJQYWNrYWdlTGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use packageListReplyDescriptor instead')
const PackageListReply$json = {
  '1': 'PackageListReply',
  '2': [
    {'1': 'packages', '3': 1, '4': 3, '5': 11, '6': '.boxey.packages.PackageHeader', '10': 'packages'},
  ],
};

/// Descriptor for `PackageListReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageListReplyDescriptor = $convert.base64Decode(
    'ChBQYWNrYWdlTGlzdFJlcGx5EjkKCHBhY2thZ2VzGAEgAygLMh0uYm94ZXkucGFja2FnZXMuUG'
    'Fja2FnZUhlYWRlclIIcGFja2FnZXM=');

@$core.Deprecated('Use packageDetailsRequestDescriptor instead')
const PackageDetailsRequest$json = {
  '1': 'PackageDetailsRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `PackageDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageDetailsRequestDescriptor = $convert.base64Decode(
    'ChVQYWNrYWdlRGV0YWlsc1JlcXVlc3QSEAoDdWlkGAEgASgJUgN1aWQ=');

@$core.Deprecated('Use packageDetailsReplyDescriptor instead')
const PackageDetailsReply$json = {
  '1': 'PackageDetailsReply',
  '2': [
    {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.boxey.packages.PackageHeader', '10': 'header'},
    {'1': 'status', '3': 2, '4': 3, '5': 11, '6': '.boxey.packages.StatusDetails', '10': 'status'},
    {'1': 'pickup', '3': 3, '4': 1, '5': 11, '6': '.boxey.packages.PickupDetails', '9': 0, '10': 'pickup', '17': true},
  ],
  '8': [
    {'1': '_pickup'},
  ],
};

/// Descriptor for `PackageDetailsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageDetailsReplyDescriptor = $convert.base64Decode(
    'ChNQYWNrYWdlRGV0YWlsc1JlcGx5EjUKBmhlYWRlchgBIAEoCzIdLmJveGV5LnBhY2thZ2VzLl'
    'BhY2thZ2VIZWFkZXJSBmhlYWRlchI1CgZzdGF0dXMYAiADKAsyHS5ib3hleS5wYWNrYWdlcy5T'
    'dGF0dXNEZXRhaWxzUgZzdGF0dXMSOgoGcGlja3VwGAMgASgLMh0uYm94ZXkucGFja2FnZXMuUG'
    'lja3VwRGV0YWlsc0gAUgZwaWNrdXCIAQFCCQoHX3BpY2t1cA==');

@$core.Deprecated('Use packageHeaderDescriptor instead')
const PackageHeader$json = {
  '1': 'PackageHeader',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'sender', '3': 2, '4': 1, '5': 9, '10': 'sender'},
    {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.boxey.packages.StatusTypeUser', '10': 'status'},
  ],
};

/// Descriptor for `PackageHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageHeaderDescriptor = $convert.base64Decode(
    'Cg1QYWNrYWdlSGVhZGVyEhAKA3VpZBgBIAEoCVIDdWlkEhYKBnNlbmRlchgCIAEoCVIGc2VuZG'
    'VyEjYKBnN0YXR1cxgDIAEoDjIeLmJveGV5LnBhY2thZ2VzLlN0YXR1c1R5cGVVc2VyUgZzdGF0'
    'dXM=');

@$core.Deprecated('Use statusDetailsDescriptor instead')
const StatusDetails$json = {
  '1': 'StatusDetails',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.boxey.packages.StatusTypeUser', '10': 'type'},
    {'1': 'time', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'time'},
  ],
};

/// Descriptor for `StatusDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusDetailsDescriptor = $convert.base64Decode(
    'Cg1TdGF0dXNEZXRhaWxzEjIKBHR5cGUYASABKA4yHi5ib3hleS5wYWNrYWdlcy5TdGF0dXNUeX'
    'BlVXNlclIEdHlwZRIuCgR0aW1lGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIE'
    'dGltZQ==');

@$core.Deprecated('Use pickupDetailsDescriptor instead')
const PickupDetails$json = {
  '1': 'PickupDetails',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `PickupDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pickupDetailsDescriptor = $convert.base64Decode(
    'Cg1QaWNrdXBEZXRhaWxzEhIKBGNvZGUYASABKAlSBGNvZGU=');

