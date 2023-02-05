import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../protos/auth.pbgrpc.dart';
import 'grcp.dart';

part 'auth.g.dart';
part 'auth.freezed.dart';

@freezed
class Auth with _$Auth {
  const factory Auth.signedIn({
    required String token,
    required String nickname,
  }) = SignedIn;

  const factory Auth.signedOut() = SignedOut;
}

@riverpod
UserAuthClient authClinet(AuthClinetRef ref) {
  return UserAuthClient(ref.watch(channelProvider));
}

@riverpod
class LoginState extends _$LoginState {
  @override
  FutureOr<Auth> build() {
    return const Auth.signedOut();
  }

  Future<void> login(String nickname) async {
    state = await AsyncValue.guard(() async {
      return ref
          .watch(authClinetProvider)
          .register(UserRegisterRequest(nickname: nickname))
          .then(
        (p0) {
          switch (p0.whichRegisterReply()) {
            case UserRegisterReply_RegisterReply.sessionAuth:
              return Auth.signedIn(token: p0.sessionAuth, nickname: nickname);
            default:
              return const Auth.signedOut();
          }
        },
      );
    });
  }
}
