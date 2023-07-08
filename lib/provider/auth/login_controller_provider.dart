import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_api_provider.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_hive_provider.dart';
import 'package:instant_grrocery_delivery/util/extension/async_value.dart';

class LoginController extends StateNotifier<AsyncValue<AuthResponseDto?>> {
  LoginController(this.ref) : super(AsyncValueExt.initial());

  final Ref ref;

  void login(LoginRequestDto loginUser) async {
    try {
      state = const AsyncLoading();
      final authUser = await ref.read(authApiProvider).login(loginUser);
      ref.read(saveAuthUserProvider(authUser));
      state = AsyncData(authUser);
    } catch (e, s) {
      state = AsyncError(e, s);
    }
  }

  void isPreviouslyLoggedIn() async {
    state = ref.read(getAuthUserProvider);
  }
}

final loginControllerProvider =
    StateNotifierProvider<LoginController, AsyncValue<AuthResponseDto?>>(
  (ref) => LoginController(ref),
);
