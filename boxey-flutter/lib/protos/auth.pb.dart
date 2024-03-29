//
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserRegisterRequest extends $pb.GeneratedMessage {
  factory UserRegisterRequest() => create();
  UserRegisterRequest._() : super();
  factory UserRegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserRegisterRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.auth'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nickname')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRegisterRequest clone() => UserRegisterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRegisterRequest copyWith(void Function(UserRegisterRequest) updates) => super.copyWith((message) => updates(message as UserRegisterRequest)) as UserRegisterRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserRegisterRequest create() => UserRegisterRequest._();
  UserRegisterRequest createEmptyInstance() => create();
  static $pb.PbList<UserRegisterRequest> createRepeated() => $pb.PbList<UserRegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static UserRegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRegisterRequest>(create);
  static UserRegisterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nickname => $_getSZ(0);
  @$pb.TagNumber(1)
  set nickname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNickname() => $_has(0);
  @$pb.TagNumber(1)
  void clearNickname() => clearField(1);
}

enum UserRegisterReply_RegisterReply {
  errorMessage, 
  sessionAuth, 
  notSet
}

class UserRegisterReply extends $pb.GeneratedMessage {
  factory UserRegisterReply() => create();
  UserRegisterReply._() : super();
  factory UserRegisterReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRegisterReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, UserRegisterReply_RegisterReply> _UserRegisterReply_RegisterReplyByTag = {
    1 : UserRegisterReply_RegisterReply.errorMessage,
    2 : UserRegisterReply_RegisterReply.sessionAuth,
    0 : UserRegisterReply_RegisterReply.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserRegisterReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'boxey.auth'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'errorMessage')
    ..aOS(2, _omitFieldNames ? '' : 'sessionAuth')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRegisterReply clone() => UserRegisterReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRegisterReply copyWith(void Function(UserRegisterReply) updates) => super.copyWith((message) => updates(message as UserRegisterReply)) as UserRegisterReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserRegisterReply create() => UserRegisterReply._();
  UserRegisterReply createEmptyInstance() => create();
  static $pb.PbList<UserRegisterReply> createRepeated() => $pb.PbList<UserRegisterReply>();
  @$core.pragma('dart2js:noInline')
  static UserRegisterReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRegisterReply>(create);
  static UserRegisterReply? _defaultInstance;

  UserRegisterReply_RegisterReply whichRegisterReply() => _UserRegisterReply_RegisterReplyByTag[$_whichOneof(0)]!;
  void clearRegisterReply() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get errorMessage => $_getSZ(0);
  @$pb.TagNumber(1)
  set errorMessage($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrorMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrorMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionAuth => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionAuth($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionAuth() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionAuth() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
