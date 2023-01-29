import 'package:boxey_flutter/grcp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => const PackageListPage()),
            ),
          );
        },
        child: const Text('My Packages'),
      )),
    );
  }
}

class PackageListPage extends ConsumerWidget {
  const PackageListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = 'test';
    var packages = ref.watch(userPackageProvider(user));

    return Scaffold(
      appBar: AppBar(title: const Text('My packages')),
      body: packages.when(
        data: (data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            var item = data[index];
            return ListTile(
              title: Text("Package ${item.title}, weight: ${item.weight}"),
            );
          },
        ),
        error: (e, _) => Text(e.toString()),
        loading: () => const Placeholder(),
      ),
    );
  }
}
