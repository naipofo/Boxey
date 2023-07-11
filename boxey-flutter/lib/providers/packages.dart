import 'package:boxey_flutter/providers/auth.dart';
import 'package:grpc/service_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../protos/packages.pbgrpc.dart';
import 'grcp.dart';

part 'packages.g.dart';

@riverpod
PackagesClient packageClinet(PackageClinetRef ref) {
  return PackagesClient(
    ref.watch(channelProvider),
    options: CallOptions(
      metadata: {
        'auth': ref.watch(loginStateProvider).mapOrNull<String?>(
                  data: (data) => data.value.map(
                    signedIn: (value) => value.token,
                    signedOut: (_) => null,
                  ),
                ) ??
            ""
      },
    ),
  );
}

@riverpod
Future<List<PackageHeader>> userPackage(UserPackageRef ref) {
  return ref
      .watch(packageClinetProvider)
      .packageList(PackageListRequest())
      .then((p0) => p0.packages);
}

@riverpod
Future<PackageDetailsReply> userPackageDetails(UserPackageDetailsRef ref,
    {required String uid}) {
  return ref
      .watch(packageClinetProvider)
      .packageDetails(PackageDetailsRequest()..uid = uid);
}
