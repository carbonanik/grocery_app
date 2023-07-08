import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/user.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_api_provider.dart';

import 'auth_hive_provider.dart';

class SignUpController extends StateNotifier<AsyncValue<AuthResponseDto>> {
  SignUpController(this.ref) : super(const AsyncLoading());
  final Ref ref;

  void signUp(CreateUserDto createUser) async {
    state = const AsyncLoading();
    try {
      final authUser =
          await ref.read(authApiProvider).register(createUser);
      ref.read(saveAuthUserProvider(authUser));
      state = AsyncData(authUser);
    } catch (e, s) {
      state = AsyncError(e, s);
    }
  }
}

final signUpControllerProvider =
    StateNotifierProvider<SignUpController, AsyncValue<AuthResponseDto?>>(
        (ref) => SignUpController(ref));
