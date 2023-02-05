import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers/auth.dart';
import 'routes.dart';

part 'router_notifier.g.dart';

@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;
  bool isAuth = false;

  @override
  Future<void> build() async {
    isAuth = await ref.watch(
      loginStateProvider.selectAsync(
          (data) => data.map(signedIn: (_) => true, signedOut: (_) => false)),
    );

    ref.listenSelf((_, __) {
      if (state.isLoading) return;
      routerListener?.call();
    });
  }

  String? redirect(BuildContext context, GoRouterState state) {
    if (this.state.isLoading || this.state.hasError) return null;

    final isSplash = state.location == SplashRoute.path;

    if (isSplash) {
      return isAuth ? HomeRoute.path : LoginRoute.path;
    }

    final isLoggingIn = state.location == LoginRoute.path;
    if (isLoggingIn) return isAuth ? HomeRoute.path : null;

    return isAuth ? null : SplashRoute.path;
  }

  List<GoRoute> get routes => $appRoutes;

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}
