import 'package:boxey_flutter/pages/sending/sending_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/home.dart';
import '../pages/login.dart';
import '../pages/packages/package_details.dart';
import '../pages/packages/package_list.dart';
import '../pages/settings.dart';
import 'router.dart';

List<RouteBase> routes = [
  GoRoute(
    path: '/splash',
    builder: (context, state) => const Text('Splash'),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginPage(),
  ),
  ShellRoute(
    navigatorKey: shellKey,
    builder: (context, state, child) => HomePage(
      child: child,
    ),
    routes: [
      GoRoute(
        path: '/packages',
        builder: (context, state) => const PackageListPage(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsPage(),
      ),
      GoRoute(
        path: '/send',
        builder: (context, state) => const SendPage(),
      ),
      GoRoute(
        path: '/package/:uid',
        builder: (context, state) {
          var uid = state.pathParameters['uid'];
          return uid != null
              ? PackageDetailsPage(uid: uid)
              : const Placeholder();
        },
      )
    ],
  )
];
