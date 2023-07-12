//
//  Generated code. Do not modify.
//  source: webtrack.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'packages.pb.dart' as $1;

class TrackPackageRequest extends $pb.GeneratedMessage {
  factory TrackPackageRequest() => create();
  TrackPackageRequest._() : super();
  factory TrackPackageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrackPackageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TrackPackageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.webtrack'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrackPackageRequest clone() => TrackPackageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrackPackageRequest copyWith(void Function(TrackPackageRequest) updates) => super.copyWith((message) => updates(message as TrackPackageRequest)) as TrackPackageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrackPackageRequest create() => TrackPackageRequest._();
  TrackPackageRequest createEmptyInstance() => create();
  static $pb.PbList<TrackPackageRequest> createRepeated() => $pb.PbList<TrackPackageRequest>();
  @$core.pragma('dart2js:noInline')
  static TrackPackageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrackPackageRequest>(create);
  static TrackPackageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
}

class TrackPackageReply extends $pb.GeneratedMessage {
  factory TrackPackageReply() => create();
  TrackPackageReply._() : super();
  factory TrackPackageReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrackPackageReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TrackPackageReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.webtrack'), createEmptyInstance: create)
    ..pc<$1.StatusDetails>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.PM, subBuilder: $1.StatusDetails.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrackPackageReply clone() => TrackPackageReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrackPackageReply copyWith(void Function(TrackPackageReply) updates) => super.copyWith((message) => updates(message as TrackPackageReply)) as TrackPackageReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrackPackageReply create() => TrackPackageReply._();
  TrackPackageReply createEmptyInstance() => create();
  static $pb.PbList<TrackPackageReply> createRepeated() => $pb.PbList<TrackPackageReply>();
  @$core.pragma('dart2js:noInline')
  static TrackPackageReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrackPackageReply>(create);
  static TrackPackageReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.StatusDetails> get status => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
