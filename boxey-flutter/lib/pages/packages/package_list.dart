import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/packages.dart';
import 'package_card.dart';
import 'package_details.dart';

class PackageListPage extends HookConsumerWidget {
  const PackageListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var packages = ref.watch(userPackageProvider);
    final selectedIndex = useState<int?>(null);
    return Scaffold(
      body: packages.when(
        data: (data) => LayoutBuilder(
          builder: (context, constraints) {
            final bigScreen = constraints.maxWidth > 960.0;
            return Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      var package = data[index];
                      return PackageCard(
                        package: package,
                        selected: index == selectedIndex.value && bigScreen,
                        onTap: () {
                          selectedIndex.value = index;
                          if (!bigScreen) {
                            context.push('/package/${package.uid}');
                          }
                        },
                      );
                    },
                  ),
                ),
                if (bigScreen)
                  Expanded(
                    flex: 2,
                    child: selectedIndex.value != null
                        ? PackageDetials(
                            package: data[selectedIndex.value ?? 0],
                          )
                        : const Placeholder(),
                  )
              ],
            );
          },
        ),
        error: (e, _) => Text(e.toString()),
        loading: () => const Placeholder(),
      ),
    );
  }
}
