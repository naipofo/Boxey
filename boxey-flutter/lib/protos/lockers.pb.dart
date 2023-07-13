//
//  Generated code. Do not modify.
//  source: lockers.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class LockersListRequest extends $pb.GeneratedMessage {
  factory LockersListRequest() => create();
  LockersListRequest._() : super();
  factory LockersListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LockersListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LockersListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.lockers'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LockersListRequest clone() => LockersListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LockersListRequest copyWith(void Function(LockersListRequest) updates) => super.copyWith((message) => updates(message as LockersListRequest)) as LockersListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LockersListRequest create() => LockersListRequest._();
  LockersListRequest createEmptyInstance() => create();
  static $pb.PbList<LockersListRequest> createRepeated() => $pb.PbList<LockersListRequest>();
  @$core.pragma('dart2js:noInline')
  static LockersListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LockersListRequest>(create);
  static LockersListRequest? _defaultInstance;
}

class LockersListerReply extends $pb.GeneratedMessage {
  factory LockersListerReply() => create();
  LockersListerReply._() : super();
  factory LockersListerReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LockersListerReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LockersListerReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.lockers'), createEmptyInstance: create)
    ..pc<Locker>(1, _omitFieldNames ? '' : 'Lockers', $pb.PbFieldType.PM, protoName: 'Lockers', subBuilder: Locker.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LockersListerReply clone() => LockersListerReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LockersListerReply copyWith(void Function(LockersListerReply) updates) => super.copyWith((message) => updates(message as LockersListerReply)) as LockersListerReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LockersListerReply create() => LockersListerReply._();
  LockersListerReply createEmptyInstance() => create();
  static $pb.PbList<LockersListerReply> createRepeated() => $pb.PbList<LockersListerReply>();
  @$core.pragma('dart2js:noInline')
  static LockersListerReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LockersListerReply>(create);
  static LockersListerReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Locker> get lockers => $_getList(0);
}

class Locker extends $pb.GeneratedMessage {
  factory Locker() => create();
  Locker._() : super();
  factory Locker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Locker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Locker', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.lockers'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'location')
    ..aOS(3, _omitFieldNames ? '' : 'locationHuman')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Locker clone() => Locker()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Locker copyWith(void Function(Locker) updates) => super.copyWith((message) => updates(message as Locker)) as Locker;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Locker create() => Locker._();
  Locker createEmptyInstance() => create();
  static $pb.PbList<Locker> createRepeated() => $pb.PbList<Locker>();
  @$core.pragma('dart2js:noInline')
  static Locker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Locker>(create);
  static Locker? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get location => $_getSZ(1);
  @$pb.TagNumber(2)
  set location($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get locationHuman => $_getSZ(2);
  @$pb.TagNumber(3)
  set locationHuman($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocationHuman() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocationHuman() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
