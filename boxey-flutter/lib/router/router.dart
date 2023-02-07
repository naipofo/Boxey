import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'router_notifier.dart';
import 'routes.dart';

part 'router.g.dart';

final key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');
final shellKey = GlobalKey<NavigatorState>(debugLabel: 'shellKey');

@riverpod
GoRouter router(RouterRef ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);

  return GoRouter(
    navigatorKey: key,
    refreshListenable: notifier,
    debugLogDiagnostics: true,
    initialLocation: '/splash',
    routes: routes,
    redirect: notifier.redirect,
  );
}
