import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'home.freezed.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationScaffold(
      routes: const [
        NavDestinaion(
          icon: Icons.inventory_2,
          label: 'Packages',
          route: '/packages',
        ),
        NavDestinaion(
          icon: Icons.local_shipping,
          label: 'Send',
          route: '/send',
        ),
        NavDestinaion(
          icon: Icons.settings,
          label: 'Settings',
          route: '/settings',
        ),
      ],
      body: child,
    );
  }
}

@freezed
class NavDestinaion with _$NavDestinaion {
  const factory NavDestinaion({
    required IconData icon,
    required String label,
    required String route,
  }) = _NavDestinaion;
}

class NavigationScaffold extends HookConsumerWidget {
  const NavigationScaffold({
    super.key,
    required this.routes,
    required this.body,
  });

  final List<NavDestinaion> routes;

  final Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = useState(0);

    return LayoutBuilder(
      builder: (context, constraints) {
        final mobile = constraints.maxWidth < 640;

        void onDestinationSelected(i) {
          selectedIndex.value = i;
          context.go(routes[i].route);
        }

        return Scaffold(
          body: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (!mobile)
                NavigationRail(
                  onDestinationSelected: onDestinationSelected,
                  destinations: routes
                      .map(
                        (e) => NavigationRailDestination(
                          icon: Icon(e.icon),
                          label: Text(e.label),
                        ),
                      )
                      .toList(),
                  selectedIndex: selectedIndex.value,
                  labelType: NavigationRailLabelType.all,
                ),
              Expanded(child: body)
            ],
          ),
          bottomNavigationBar: mobile
              ? NavigationBar(
                  onDestinationSelected: onDestinationSelected,
                  selectedIndex: selectedIndex.value,
                  destinations: routes
                      .map(
                        (e) => NavigationDestination(
                          icon: Icon(e.icon),
                          label: e.label,
                        ),
                      )
                      .toList(),
                )
              : null,
        );
      },
    );
  }
}
