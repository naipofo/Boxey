//
//  Generated code. Do not modify.
//  source: sending.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class PackageSendRequest extends $pb.GeneratedMessage {
  factory PackageSendRequest() => create();
  PackageSendRequest._() : super();
  factory PackageSendRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PackageSendRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PackageSendRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.sending'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..aOS(2, _omitFieldNames ? '' : 'destinationId')
    ..aInt64(3, _omitFieldNames ? '' : 'sizeId')
    ..aOS(4, _omitFieldNames ? '' : 'sender')
    ..aOS(5, _omitFieldNames ? '' : 'recipientNickname')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PackageSendRequest clone() => PackageSendRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PackageSendRequest copyWith(void Function(PackageSendRequest) updates) => super.copyWith((message) => updates(message as PackageSendRequest)) as PackageSendRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageSendRequest create() => PackageSendRequest._();
  PackageSendRequest createEmptyInstance() => create();
  static $pb.PbList<PackageSendRequest> createRepeated() => $pb.PbList<PackageSendRequest>();
  @$core.pragma('dart2js:noInline')
  static PackageSendRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PackageSendRequest>(create);
  static PackageSendRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get destinationId => $_getSZ(1);
  @$pb.TagNumber(2)
  set destinationId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDestinationId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDestinationId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sizeId => $_getI64(2);
  @$pb.TagNumber(3)
  set sizeId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSizeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSizeId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get sender => $_getSZ(3);
  @$pb.TagNumber(4)
  set sender($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSender() => $_has(3);
  @$pb.TagNumber(4)
  void clearSender() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get recipientNickname => $_getSZ(4);
  @$pb.TagNumber(5)
  set recipientNickname($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRecipientNickname() => $_has(4);
  @$pb.TagNumber(5)
  void clearRecipientNickname() => clearField(5);
}

class PackageSendReply extends $pb.GeneratedMessage {
  factory PackageSendReply() => create();
  PackageSendReply._() : super();
  factory PackageSendReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PackageSendReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PackageSendReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.sending'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PackageSendReply clone() => PackageSendReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PackageSendReply copyWith(void Function(PackageSendReply) updates) => super.copyWith((message) => updates(message as PackageSendReply)) as PackageSendReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageSendReply create() => PackageSendReply._();
  PackageSendReply createEmptyInstance() => create();
  static $pb.PbList<PackageSendReply> createRepeated() => $pb.PbList<PackageSendReply>();
  @$core.pragma('dart2js:noInline')
  static PackageSendReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PackageSendReply>(create);
  static PackageSendReply? _defaultInstance;
}

class SizeListRequest extends $pb.GeneratedMessage {
  factory SizeListRequest() => create();
  SizeListRequest._() : super();
  factory SizeListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SizeListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SizeListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.sending'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SizeListRequest clone() => SizeListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SizeListRequest copyWith(void Function(SizeListRequest) updates) => super.copyWith((message) => updates(message as SizeListRequest)) as SizeListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SizeListRequest create() => SizeListRequest._();
  SizeListRequest createEmptyInstance() => create();
  static $pb.PbList<SizeListRequest> createRepeated() => $pb.PbList<SizeListRequest>();
  @$core.pragma('dart2js:noInline')
  static SizeListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SizeListRequest>(create);
  static SizeListRequest? _defaultInstance;
}

class SizeListReply extends $pb.GeneratedMessage {
  factory SizeListReply() => create();
  SizeListReply._() : super();
  factory SizeListReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SizeListReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SizeListReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.sending'), createEmptyInstance: create)
    ..pc<Size>(1, _omitFieldNames ? '' : 'sizes', $pb.PbFieldType.PM, subBuilder: Size.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SizeListReply clone() => SizeListReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SizeListReply copyWith(void Function(SizeListReply) updates) => super.copyWith((message) => updates(message as SizeListReply)) as SizeListReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SizeListReply create() => SizeListReply._();
  SizeListReply createEmptyInstance() => create();
  static $pb.PbList<SizeListReply> createRepeated() => $pb.PbList<SizeListReply>();
  @$core.pragma('dart2js:noInline')
  static SizeListReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SizeListReply>(create);
  static SizeListReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Size> get sizes => $_getList(0);
}

class Size extends $pb.GeneratedMessage {
  factory Size() => create();
  Size._() : super();
  factory Size.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Size.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Size', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.sending'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'size')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Size clone() => Size()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Size copyWith(void Function(Size) updates) => super.copyWith((message) => updates(message as Size)) as Size;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Size create() => Size._();
  Size createEmptyInstance() => create();
  static $pb.PbList<Size> createRepeated() => $pb.PbList<Size>();
  @$core.pragma('dart2js:noInline')
  static Size getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Size>(create);
  static Size? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get size => $_getSZ(1);
  @$pb.TagNumber(2)
  set size($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
