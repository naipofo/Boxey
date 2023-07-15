import 'package:boxey_flutter/protos/sending.pbgrpc.dart';
import 'package:boxey_flutter/providers/auth.dart';
import 'package:boxey_flutter/providers/lockers.dart';
import 'package:boxey_flutter/providers/package_sending.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class SendPage extends HookConsumerWidget {
  const SendPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chosenSize = useState(0);
    final chosenLocker = useState<String?>(null);
    final recipient = useTextEditingController(text: "");
    var sizes = ref.watch(packageSizesProvider);
    var lockers = ref.watch(lockerListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send package'),
      ),
      body: ListView(
        children: [
          // TODO: wait for both of them to load before showing ui
          sizes.when(
            // TODO: nicer size selection ui
            data: (sizes) => SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var size in sizes.sizes)
                    Column(
                      children: [
                        Text(size.toString()),
                        Radio(
                          value: size.id,
                          groupValue: chosenSize.value,
                          onChanged: (value) =>
                              chosenSize.value = size.id.toInt(),
                        )
                      ],
                    )
                ],
              ),
            ),
            // TODO: better error messages
            error: (e, _) => Text(e.toString()),
            loading: () => const Placeholder(),
          ),
          lockers.when(
            // TODO: nicer locker selection ui
            data: (lockers) => SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var locker in lockers.lockers)
                    Column(
                      children: [
                        Text(locker.toString()),
                        Radio(
                          value: locker.id,
                          groupValue: chosenLocker.value,
                          onChanged: (value) => chosenLocker.value = locker.id,
                        )
                      ],
                    )
                ],
              ),
            ),
            // TODO: better error messages
            error: (e, _) => Text(e.toString()),
            loading: () => const Placeholder(),
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "recipient",
            ),
            controller: recipient,
          ),
          FilledButton(
            onPressed: () {
              var request = PackageSendRequest();
              request.uid = const Uuid().v4();
              request.destinationId = chosenLocker.value ?? "";
              request.sizeId = Int64.fromInts(0, chosenSize.value);
              // TODO: block if not logged in
              request.sender = ref.read(loginStateProvider).value?.map(
                        signedIn: (value) => "${value.nickname} App",
                        signedOut: (value) => null,
                      ) ??
                  "";
              request.recipientNickname = recipient.value.text;
              ref.read(packageSendingClientProvider).packageSend(request);
              // TODO: go to summary screen instead
              // TODO: make a model that packs all settings from this page
              context.go("/packages");
            },
            child: const Text("Send!"),
          )
        ],
      ),
    );
  }
}
