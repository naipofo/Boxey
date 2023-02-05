import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/packages.dart';

class PackageListPage extends ConsumerWidget {
  const PackageListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var packages = ref.watch(userPackageProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My packages'),
      ),
      body: packages.when(
        data: (data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            var item = data[index];
            return ListTile(
              title: Text(
                "#${item.uid} Package ${item.title}, weight: ${item.weight}",
              ),
            );
          },
        ),
        error: (e, _) => Text(e.toString()),
        loading: () => const Placeholder(),
      ),
    );
  }
}
