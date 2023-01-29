import 'package:boxey_flutter/protos/packages.pbgrpc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grpc/grpc.dart';

final channelProvider = Provider(
  (ref) => ClientChannel(
    'localhost',
    port: 50051,
    options: ChannelOptions(
      credentials: const ChannelCredentials.insecure(),
      codecRegistry: CodecRegistry(
        codecs: const [GzipCodec(), IdentityCodec()],
      ),
    ),
  ),
);

final packageClientProvider =
    Provider((ref) => PackagesClient(ref.watch(channelProvider)));

final userPackageProvider = FutureProvider.family<List<Package>, String>(
  (ref, arg) async => ref
      .watch(packageClientProvider)
      .listPackages(PackageRequest(user: arg))
      .then((p0) => p0.packages),
);
