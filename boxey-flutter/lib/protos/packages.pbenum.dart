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

class Status extends $pb.ProtobufEnum {
  static const Status PREPARED = Status._(0, _omitEnumNames ? '' : 'PREPARED');
  static const Status HANDED_OVER = Status._(1, _omitEnumNames ? '' : 'HANDED_OVER');
  static const Status IN_TRANSIT = Status._(2, _omitEnumNames ? '' : 'IN_TRANSIT');
  static const Status READY = Status._(3, _omitEnumNames ? '' : 'READY');
  static const Status RECEIVED = Status._(4, _omitEnumNames ? '' : 'RECEIVED');

  static const $core.List<Status> values = <Status> [
    PREPARED,
    HANDED_OVER,
    IN_TRANSIT,
    READY,
    RECEIVED,
  ];

  static final $core.Map<$core.int, Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Status? valueOf($core.int value) => _byValue[value];

  const Status._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
