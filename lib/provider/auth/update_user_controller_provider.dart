import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/user.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_api_provider.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_hive_provider.dart';
import 'package:instant_grrocery_delivery/util/extension/async_value.dart';

class UpdateUserController extends StateNotifier<AsyncValue<AuthResponseDto?>> {
  UpdateUserController(this.ref) : super(AsyncValueExt.initial());

  final Ref ref;

  void update(UpdateUserDto updateUser) async {
    try {
      state = const AsyncLoading();
      ref.read(getAuthUserProvider).whenData((savedAuthUser) async {
        if (savedAuthUser == null) {
          throw Exception('Failed to get auth user');
        }
        final user = await ref.read(authApiProvider).update(
          authUser: savedAuthUser,
          updateUser: updateUser,
        );

        final newAuthUser = AuthResponseDto(jwt: savedAuthUser.jwt, user: user);

        ref.read(saveAuthUserProvider(newAuthUser));
        state = AsyncData(newAuthUser);
      });
    } catch (e, s) {
      state = AsyncError(e, s);
    }
  }

  void isPreviouslyLoggedIn() async {
    state = ref.read(getAuthUserProvider);
  }
}

final updateUserControllerProvider =
StateNotifierProvider<UpdateUserController, AsyncValue<AuthResponseDto?>>(
      (ref) => UpdateUserController(ref),
);