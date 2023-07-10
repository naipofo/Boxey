import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/packages.dart';
import '../../protos/packages.pbgrpc.dart';

class PackageDetailsPage extends HookConsumerWidget {
  const PackageDetailsPage({super.key, this.uid});

  final String? uid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var packages = ref.watch(userPackageProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Package details'),
      ),
      body: packages.maybeMap(
          data: (data) {
            PackageHeader? package =
                data.value.cast<PackageHeader?>().firstWhere(
                      (element) => element?.uid == uid,
                      orElse: () => null,
                    );
            return package != null
                ? PackageDetials(package: package)
                : const Placeholder();
          },
          orElse: () => const Placeholder()),
    );
  }
}

class PackageDetials extends StatelessWidget {
  const PackageDetials({super.key, required this.package});

  final PackageHeader package;

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
                  package.sender,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: onColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
