///
//  Generated code. Do not modify.
//  source: packages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use packageRequestDescriptor instead')
const PackageRequest$json = const {
  '1': 'PackageRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
  ],
};

/// Descriptor for `PackageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageRequestDescriptor = $convert.base64Decode('Cg5QYWNrYWdlUmVxdWVzdBISCgR1c2VyGAEgASgJUgR1c2Vy');
@$core.Deprecated('Use packageReplyDescriptor instead')
const PackageReply$json = const {
  '1': 'PackageReply',
  '2': const [
    const {'1': 'packages', '3': 1, '4': 3, '5': 11, '6': '.boxey.packages.Package', '10': 'packages'},
  ],
};

/// Descriptor for `PackageReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageReplyDescriptor = $convert.base64Decode('CgxQYWNrYWdlUmVwbHkSMwoIcGFja2FnZXMYASADKAsyFy5ib3hleS5wYWNrYWdlcy5QYWNrYWdlUghwYWNrYWdlcw==');
@$core.Deprecated('Use packageDescriptor instead')
const Package$json = const {
  '1': 'Package',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'weight', '3': 3, '4': 1, '5': 5, '10': 'weight'},
  ],
};

/// Descriptor for `Package`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packageDescriptor = $convert.base64Decode('CgdQYWNrYWdlEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSFgoGd2VpZ2h0GAMgASgFUgZ3ZWlnaHQ=');
