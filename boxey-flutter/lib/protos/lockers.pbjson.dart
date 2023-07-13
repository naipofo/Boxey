//
//  Generated code. Do not modify.
//  source: lockers.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use lockersListRequestDescriptor instead')
const LockersListRequest$json = {
  '1': 'LockersListRequest',
};

/// Descriptor for `LockersListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lockersListRequestDescriptor = $convert.base64Decode(
    'ChJMb2NrZXJzTGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use lockersListerReplyDescriptor instead')
const LockersListerReply$json = {
  '1': 'LockersListerReply',
  '2': [
    {'1': 'Lockers', '3': 1, '4': 3, '5': 11, '6': '.boxey.lockers.Locker', '10': 'Lockers'},
  ],
};

/// Descriptor for `LockersListerReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lockersListerReplyDescriptor = $convert.base64Decode(
    'ChJMb2NrZXJzTGlzdGVyUmVwbHkSLwoHTG9ja2VycxgBIAMoCzIVLmJveGV5LmxvY2tlcnMuTG'
    '9ja2VyUgdMb2NrZXJz');

@$core.Deprecated('Use lockerDescriptor instead')
const Locker$json = {
  '1': 'Locker',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'location', '3': 2, '4': 1, '5': 9, '10': 'location'},
    {'1': 'location_human', '3': 3, '4': 1, '5': 9, '10': 'locationHuman'},
  ],
};

/// Descriptor for `Locker`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lockerDescriptor = $convert.base64Decode(
    'CgZMb2NrZXISDgoCaWQYASABKAlSAmlkEhoKCGxvY2F0aW9uGAIgASgJUghsb2NhdGlvbhIlCg'
    '5sb2NhdGlvbl9odW1hbhgDIAEoCVINbG9jYXRpb25IdW1hbg==');

