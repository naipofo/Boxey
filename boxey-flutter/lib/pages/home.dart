import 'package:boxey_flutter/providers/auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../router/routes.dart';

part 'home.g.dart';

@riverpod
String displayUsername(DisplayUsernameRef ref) {
  return ref.watch(
    loginStateProvider.select(
      (value) => value.maybeMap(
        data: (data) => data.value.map(
          signedIn: (data) => data.nickname,
          signedOut: (_) => "",
        ),
        orElse: () => "ding",
      ),
    ),
  );
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var username = ref.watch(displayUsernameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hello $username'),
            ElevatedButton(
              onPressed: () {
                context.go(PackagesRoute.path);
              },
              child: const Text('My Packages'),
            ),
          ],
        ),
      ),
    );
  }
}
