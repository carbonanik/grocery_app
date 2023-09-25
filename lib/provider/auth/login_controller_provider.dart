import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_api_provider.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_hive_provider.dart';
import 'package:instant_grrocery_delivery/util/extension/async_value.dart';

class LoginNotifier extends StateNotifier<AuthResult> {
  LoginNotifier(this.read) : super(const AuthResult.initial());

  final Function(ProviderListenable) read;

  void login(LoginRequest loginUser) async {
    try {
      state = const AuthResult.loading();
      final authUser = await read(authApiProvider).login(loginUser);
      read(saveAuthUserProvider(authUser));
      state = AuthResult.data(authUser);
    } on Exception catch (e) {
      state = AuthResult.error(e);
    }
  }

  // void isPreviouslyLoggedIn() async {
  //   state = ref.read(getAuthUserProvider);
  // }
}

final loginNotifierProvider =
    StateNotifierProvider.autoDispose<LoginNotifier, AuthResult>(
  (ref) => LoginNotifier(ref.read),
);
