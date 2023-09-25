import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_api_provider.dart';

import 'auth_hive_provider.dart';

class SignUpController extends StateNotifier<AuthResult> {
  SignUpController(this.read) : super(const AuthResult.initial());
  final Function(ProviderListenable) read;

  void signUp(CreateUserRequest createUser) async {
    state = const AuthResult.loading();
    try {
      final authUser = await read(authApiProvider).register(createUser);
      read(saveAuthUserProvider(authUser));
      state = AuthResult.data(authUser);
    } on Exception catch (e) {
      state = AuthResult.error(e);
    }
  }
}

final signUpControllerProvider =
    StateNotifierProvider.autoDispose<SignUpController, AuthResult>(
        (ref) => SignUpController(ref.read));
