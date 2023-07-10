// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authClinetHash() => r'ba991e2ab54a60ecec3b090ffbce0511f39cef06';

/// See also [authClinet].
@ProviderFor(authClinet)
final authClinetProvider = AutoDisposeProvider<UserAuthClient>.internal(
  authClinet,
  name: r'authClinetProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authClinetHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthClinetRef = AutoDisposeProviderRef<UserAuthClient>;
String _$loginStateHash() => r'54c16fc5f2aa57d5efa2f7ec7b866db1602786eb';

/// See also [LoginState].
@ProviderFor(LoginState)
final loginStateProvider =
    AutoDisposeAsyncNotifierProvider<LoginState, Auth>.internal(
  LoginState.new,
  name: r'loginStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoginState = AutoDisposeAsyncNotifier<Auth>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
