import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../protos/lockers.pbgrpc.dart';
import 'grcp.dart';

part 'lockers.g.dart';

// TODO: search client instead of loading everything

@riverpod
LockersClient lockersClient(LockersClientRef ref) {
  return LockersClient(
    ref.watch(channelProvider),
  );
}

@riverpod
Future<LockersListerReply> lockerList(LockerListRef ref) {
  return ref.watch(lockersClientProvider).lockersList(LockersListRequest());
}
