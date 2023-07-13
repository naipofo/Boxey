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

import 'google/protobuf/timestamp.pb.dart' as $4;
import 'packages.pbenum.dart';

export 'packages.pbenum.dart';

class PackageListRequest extends $pb.GeneratedMessage {
  factory PackageListRequest() => create();
  PackageListRequest._() : super();
  factory PackageListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PackageListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PackageListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.packages'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PackageListRequest clone() => PackageListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PackageListRequest copyWith(void Function(PackageListRequest) updates) => super.copyWith((message) => updates(message as PackageListRequest)) as PackageListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageListRequest create() => PackageListRequest._();
  PackageListRequest createEmptyInstance() => create();
  static $pb.PbList<PackageListRequest> createRepeated() => $pb.PbList<PackageListRequest>();
  @$core.pragma('dart2js:noInline')
  static PackageListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PackageListRequest>(create);
  static PackageListRequest? _defaultInstance;
}

class PackageListReply extends $pb.GeneratedMessage {
  factory PackageListReply() => create();
  PackageListReply._() : super();
  factory PackageListReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PackageListReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PackageListReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.packages'), createEmptyInstance: create)
    ..pc<PackageHeader>(1, _omitFieldNames ? '' : 'packages', $pb.PbFieldType.PM, subBuilder: PackageHeader.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PackageListReply clone() => PackageListReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PackageListReply copyWith(void Function(PackageListReply) updates) => super.copyWith((message) => updates(message as PackageListReply)) as PackageListReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageListReply create() => PackageListReply._();
  PackageListReply createEmptyInstance() => create();
  static $pb.PbList<PackageListReply> createRepeated() => $pb.PbList<PackageListReply>();
  @$core.pragma('dart2js:noInline')
  static PackageListReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PackageListReply>(create);
  static PackageListReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PackageHeader> get packages => $_getList(0);
}

class PackageDetailsRequest extends $pb.GeneratedMessage {
  factory PackageDetailsRequest() => create();
  PackageDetailsRequest._() : super();
  factory PackageDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PackageDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PackageDetailsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.packages'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PackageDetailsRequest clone() => PackageDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PackageDetailsRequest copyWith(void Function(PackageDetailsRequest) updates) => super.copyWith((message) => updates(message as PackageDetailsRequest)) as PackageDetailsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageDetailsRequest create() => PackageDetailsRequest._();
  PackageDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<PackageDetailsRequest> createRepeated() => $pb.PbList<PackageDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static PackageDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PackageDetailsRequest>(create);
  static PackageDetailsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
}

class PackageDetailsReply extends $pb.GeneratedMessage {
  factory PackageDetailsReply() => create();
  PackageDetailsReply._() : super();
  factory PackageDetailsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PackageDetailsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PackageDetailsReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.packages'), createEmptyInstance: create)
    ..aOM<PackageHeader>(1, _omitFieldNames ? '' : 'header', subBuilder: PackageHeader.create)
    ..pc<StatusDetails>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.PM, subBuilder: StatusDetails.create)
    ..aOM<PickupDetails>(3, _omitFieldNames ? '' : 'pickup', subBuilder: PickupDetails.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PackageDetailsReply clone() => PackageDetailsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PackageDetailsReply copyWith(void Function(PackageDetailsReply) updates) => super.copyWith((message) => updates(message as PackageDetailsReply)) as PackageDetailsReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageDetailsReply create() => PackageDetailsReply._();
  PackageDetailsReply createEmptyInstance() => create();
  static $pb.PbList<PackageDetailsReply> createRepeated() => $pb.PbList<PackageDetailsReply>();
  @$core.pragma('dart2js:noInline')
  static PackageDetailsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PackageDetailsReply>(create);
  static PackageDetailsReply? _defaultInstance;

  @$pb.TagNumber(1)
  PackageHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(PackageHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  PackageHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<StatusDetails> get status => $_getList(1);

  @$pb.TagNumber(3)
  PickupDetails get pickup => $_getN(2);
  @$pb.TagNumber(3)
  set pickup(PickupDetails v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPickup() => $_has(2);
  @$pb.TagNumber(3)
  void clearPickup() => clearField(3);
  @$pb.TagNumber(3)
  PickupDetails ensurePickup() => $_ensure(2);
}

class PackageHeader extends $pb.GeneratedMessage {
  factory PackageHeader() => create();
  PackageHeader._() : super();
  factory PackageHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PackageHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PackageHeader', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.packages'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..aOS(2, _omitFieldNames ? '' : 'sender')
    ..e<StatusTypeUser>(3, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: StatusTypeUser.PREPARED, valueOf: StatusTypeUser.valueOf, enumValues: StatusTypeUser.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PackageHeader clone() => PackageHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PackageHeader copyWith(void Function(PackageHeader) updates) => super.copyWith((message) => updates(message as PackageHeader)) as PackageHeader;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageHeader create() => PackageHeader._();
  PackageHeader createEmptyInstance() => create();
  static $pb.PbList<PackageHeader> createRepeated() => $pb.PbList<PackageHeader>();
  @$core.pragma('dart2js:noInline')
  static PackageHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PackageHeader>(create);
  static PackageHeader? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sender => $_getSZ(1);
  @$pb.TagNumber(2)
  set sender($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSender() => clearField(2);

  @$pb.TagNumber(3)
  StatusTypeUser get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(StatusTypeUser v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
}

class StatusDetails extends $pb.GeneratedMessage {
  factory StatusDetails() => create();
  StatusDetails._() : super();
  factory StatusDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatusDetails', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.packages'), createEmptyInstance: create)
    ..e<StatusTypeUser>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: StatusTypeUser.PREPARED, valueOf: StatusTypeUser.valueOf, enumValues: StatusTypeUser.values)
    ..aOM<$4.Timestamp>(2, _omitFieldNames ? '' : 'time', subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusDetails clone() => StatusDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusDetails copyWith(void Function(StatusDetails) updates) => super.copyWith((message) => updates(message as StatusDetails)) as StatusDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusDetails create() => StatusDetails._();
  StatusDetails createEmptyInstance() => create();
  static $pb.PbList<StatusDetails> createRepeated() => $pb.PbList<StatusDetails>();
  @$core.pragma('dart2js:noInline')
  static StatusDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusDetails>(create);
  static StatusDetails? _defaultInstance;

  @$pb.TagNumber(1)
  StatusTypeUser get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(StatusTypeUser v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $4.Timestamp get time => $_getN(1);
  @$pb.TagNumber(2)
  set time($4.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => clearField(2);
  @$pb.TagNumber(2)
  $4.Timestamp ensureTime() => $_ensure(1);
}

class PickupDetails extends $pb.GeneratedMessage {
  factory PickupDetails() => create();
  PickupDetails._() : super();
  factory PickupDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PickupDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PickupDetails', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.packages'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PickupDetails clone() => PickupDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PickupDetails copyWith(void Function(PickupDetails) updates) => super.copyWith((message) => updates(message as PickupDetails)) as PickupDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PickupDetails create() => PickupDetails._();
  PickupDetails createEmptyInstance() => create();
  static $pb.PbList<PickupDetails> createRepeated() => $pb.PbList<PickupDetails>();
  @$core.pragma('dart2js:noInline')
  static PickupDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PickupDetails>(create);
  static PickupDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
