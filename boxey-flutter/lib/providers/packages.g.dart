// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages.dart';

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

String _$packageClinetHash() => r'efbac258013722e60c5aead60f27280b930b9364';

/// See also [packageClinet].
final packageClinetProvider = AutoDisposeProvider<PackagesClient>(
  packageClinet,
  name: r'packageClinetProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$packageClinetHash,
);
typedef PackageClinetRef = AutoDisposeProviderRef<PackagesClient>;
String _$userPackageHash() => r'95cac041030598cbe63306f26b40d4b9d3a29b47';

/// See also [userPackage].
final userPackageProvider = AutoDisposeFutureProvider<List<Package>>(
  userPackage,
  name: r'userPackageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userPackageHash,
);
typedef UserPackageRef = AutoDisposeFutureProviderRef<List<Package>>;
