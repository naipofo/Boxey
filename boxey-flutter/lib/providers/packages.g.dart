// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$packageClinetHash() => r'efbac258013722e60c5aead60f27280b930b9364';

/// See also [packageClinet].
@ProviderFor(packageClinet)
final packageClinetProvider = AutoDisposeProvider<PackagesClient>.internal(
  packageClinet,
  name: r'packageClinetProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$packageClinetHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PackageClinetRef = AutoDisposeProviderRef<PackagesClient>;
String _$userPackageHash() => r'e2c5f0d69103008732ff34e3e6af5564b3e09894';

/// See also [userPackage].
@ProviderFor(userPackage)
final userPackageProvider =
    AutoDisposeFutureProvider<List<PackageHeader>>.internal(
  userPackage,
  name: r'userPackageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userPackageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserPackageRef = AutoDisposeFutureProviderRef<List<PackageHeader>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
