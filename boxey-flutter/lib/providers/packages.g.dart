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
String _$userPackageDetailsHash() =>
    r'88743602008f277421363b5509dbff27bdf9539d';

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

typedef UserPackageDetailsRef
    = AutoDisposeFutureProviderRef<PackageDetailsReply>;

/// See also [userPackageDetails].
@ProviderFor(userPackageDetails)
const userPackageDetailsProvider = UserPackageDetailsFamily();

/// See also [userPackageDetails].
class UserPackageDetailsFamily extends Family<AsyncValue<PackageDetailsReply>> {
  /// See also [userPackageDetails].
  const UserPackageDetailsFamily();

  /// See also [userPackageDetails].
  UserPackageDetailsProvider call({
    required String uid,
  }) {
    return UserPackageDetailsProvider(
      uid: uid,
    );
  }

  @override
  UserPackageDetailsProvider getProviderOverride(
    covariant UserPackageDetailsProvider provider,
  ) {
    return call(
      uid: provider.uid,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userPackageDetailsProvider';
}

/// See also [userPackageDetails].
class UserPackageDetailsProvider
    extends AutoDisposeFutureProvider<PackageDetailsReply> {
  /// See also [userPackageDetails].
  UserPackageDetailsProvider({
    required this.uid,
  }) : super.internal(
          (ref) => userPackageDetails(
            ref,
            uid: uid,
          ),
          from: userPackageDetailsProvider,
          name: r'userPackageDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userPackageDetailsHash,
          dependencies: UserPackageDetailsFamily._dependencies,
          allTransitiveDependencies:
              UserPackageDetailsFamily._allTransitiveDependencies,
        );

  final String uid;

  @override
  bool operator ==(Object other) {
    return other is UserPackageDetailsProvider && other.uid == uid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, uid.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
