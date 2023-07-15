// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lockers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lockersClientHash() => r'5e6916c9129385b36cfa8e9bc920658082862d8c';

/// See also [lockersClient].
@ProviderFor(lockersClient)
final lockersClientProvider = AutoDisposeProvider<LockersClient>.internal(
  lockersClient,
  name: r'lockersClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$lockersClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LockersClientRef = AutoDisposeProviderRef<LockersClient>;
String _$lockerListHash() => r'2757a8fd4085e0200d2a97e62384a4e50424a87f';

/// See also [lockerList].
@ProviderFor(lockerList)
final lockerListProvider =
    AutoDisposeFutureProvider<LockersListerReply>.internal(
  lockerList,
  name: r'lockerListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$lockerListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LockerListRef = AutoDisposeFutureProviderRef<LockersListerReply>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
