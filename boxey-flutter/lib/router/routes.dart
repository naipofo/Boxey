import 'package:boxey_flutter/pages/home.dart';
import 'package:boxey_flutter/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/packages.dart';

part 'routes.g.dart';

@TypedGoRoute<SplashRoute>(path: SplashRoute.path)
class SplashRoute extends GoRouteData {
  const SplashRoute();
  static const path = '/splash';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Text('Splash');
  }
}

@TypedGoRoute<HomeRoute>(path: HomeRoute.path)
class HomeRoute extends GoRouteData {
  const HomeRoute();
  static const path = '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<LoginRoute>(path: LoginRoute.path)
class LoginRoute extends GoRouteData {
  const LoginRoute();
  static const path = '/login';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginPage();
  }
}

@TypedGoRoute<PackagesRoute>(path: PackagesRoute.path)
class PackagesRoute extends GoRouteData {
  const PackagesRoute();
  static const path = '/packages';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PackageListPage();
  }
}
