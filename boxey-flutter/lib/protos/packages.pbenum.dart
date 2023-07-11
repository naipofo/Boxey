//
//  Generated code. Do not modify.
//  source: packages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class StatusTypeUser extends $pb.ProtobufEnum {
  static const StatusTypeUser PREPARED = StatusTypeUser._(0, _omitEnumNames ? '' : 'PREPARED');
  static const StatusTypeUser HANDED_OVER = StatusTypeUser._(1, _omitEnumNames ? '' : 'HANDED_OVER');
  static const StatusTypeUser IN_TRANSIT = StatusTypeUser._(2, _omitEnumNames ? '' : 'IN_TRANSIT');
  static const StatusTypeUser READY = StatusTypeUser._(3, _omitEnumNames ? '' : 'READY');
  static const StatusTypeUser RECEIVED = StatusTypeUser._(4, _omitEnumNames ? '' : 'RECEIVED');

  static const $core.List<StatusTypeUser> values = <StatusTypeUser> [
    PREPARED,
    HANDED_OVER,
    IN_TRANSIT,
    READY,
    RECEIVED,
  ];

  static final $core.Map<$core.int, StatusTypeUser> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StatusTypeUser? valueOf($core.int value) => _byValue[value];

  const StatusTypeUser._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
