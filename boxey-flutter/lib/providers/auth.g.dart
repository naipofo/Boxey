// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$LoginStateHash() => r'3eb23c2f0a919c3bee9c737bcab259a65e7f5ecf';

/// See also [LoginState].
final loginStateProvider = AutoDisposeAsyncNotifierProvider<LoginState, Auth>(
  LoginState.new,
  name: r'loginStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$LoginStateHash,
);
typedef LoginStateRef = AutoDisposeAsyncNotifierProviderRef<Auth>;

abstract class _$LoginState extends AutoDisposeAsyncNotifier<Auth> {
  @override
  FutureOr<Auth> build();
}

String _$authClinetHash() => r'ba991e2ab54a60ecec3b090ffbce0511f39cef06';

/// See also [authClinet].
final authClinetProvider = AutoDisposeProvider<UserAuthClient>(
  authClinet,
  name: r'authClinetProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authClinetHash,
);
typedef AuthClinetRef = AutoDisposeProviderRef<UserAuthClient>;
