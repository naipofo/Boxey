import 'package:boxey_flutter/protos/sending.pbgrpc.dart';
import 'package:boxey_flutter/providers/auth.dart';
import 'package:grpc/service_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'grcp.dart';

part 'package_sending.g.dart';

@riverpod
PackageSendingClient packageSendingClient(PackageSendingClientRef ref) {
  return PackageSendingClient(
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

// TODO: load sizes on app boot

@riverpod
Future<SizeListReply> packageSizes(PackageSizesRef ref) {
  return ref.watch(packageSendingClientProvider).sizeList(SizeListRequest());
}
