import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../providers/packages.dart';
import '../../protos/packages.pbgrpc.dart';

class PackageDetailsPage extends HookConsumerWidget {
  const PackageDetailsPage({super.key, required this.uid});

  final String uid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var package = ref.watch(userPackageDetailsProvider(uid: uid));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Package details'),
      ),
      body: package.maybeWhen(
          data: (data) {
            return PackageDetials(package: data);
          },
          error: (error, stackTrace) =>
              Text(error.toString() + stackTrace.toString()),
          orElse: () => const Placeholder()),
    );
  }
}

class PackageDetials extends StatelessWidget {
  const PackageDetials({super.key, required this.package});

  final PackageDetailsReply package;

  @override
  Widget build(BuildContext context) {
    var onColor = Theme.of(context).colorScheme.onSurfaceVariant;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          elevation: 0,
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  package.header.sender,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: onColor),
                ),
              ],
            ),
          ),
        ),
        for (var status in package.status)
          Card(
            elevation: 0,
            color: Theme.of(context).colorScheme.surfaceVariant,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${status.type} - ${DateTime.fromMillisecondsSinceEpoch((status.time.seconds * 1000).toInt())}",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: onColor),
                  ),
                ],
              ),
            ),
          ),
        if (package.pickup.code.isNotEmpty)
          Card(
            elevation: 0,
            color: Theme.of(context).colorScheme.surfaceVariant,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  QrImageView(
                    data: package.pickup.code,
                    version: QrVersions.auto,
                    size: 320,
                    padding: const EdgeInsets.all(16.0),
                    backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text(
                      package.pickup.code,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontFamily: "monospace",
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
