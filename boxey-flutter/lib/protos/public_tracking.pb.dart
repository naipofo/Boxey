//
//  Generated code. Do not modify.
//  source: public_tracking.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'packages.pb.dart' as $1;

class PackageTrackRequest extends $pb.GeneratedMessage {
  factory PackageTrackRequest() => create();
  PackageTrackRequest._() : super();
  factory PackageTrackRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PackageTrackRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PackageTrackRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.public_tracking'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PackageTrackRequest clone() => PackageTrackRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PackageTrackRequest copyWith(void Function(PackageTrackRequest) updates) => super.copyWith((message) => updates(message as PackageTrackRequest)) as PackageTrackRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageTrackRequest create() => PackageTrackRequest._();
  PackageTrackRequest createEmptyInstance() => create();
  static $pb.PbList<PackageTrackRequest> createRepeated() => $pb.PbList<PackageTrackRequest>();
  @$core.pragma('dart2js:noInline')
  static PackageTrackRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PackageTrackRequest>(create);
  static PackageTrackRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
}

class PackageTrackReply extends $pb.GeneratedMessage {
  factory PackageTrackReply() => create();
  PackageTrackReply._() : super();
  factory PackageTrackReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PackageTrackReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PackageTrackReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.public_tracking'), createEmptyInstance: create)
    ..pc<$1.StatusDetails>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.PM, subBuilder: $1.StatusDetails.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PackageTrackReply clone() => PackageTrackReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PackageTrackReply copyWith(void Function(PackageTrackReply) updates) => super.copyWith((message) => updates(message as PackageTrackReply)) as PackageTrackReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackageTrackReply create() => PackageTrackReply._();
  PackageTrackReply createEmptyInstance() => create();
  static $pb.PbList<PackageTrackReply> createRepeated() => $pb.PbList<PackageTrackReply>();
  @$core.pragma('dart2js:noInline')
  static PackageTrackReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PackageTrackReply>(create);
  static PackageTrackReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.StatusDetails> get status => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
