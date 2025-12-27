import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/result_value.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';

import 'package:instant_grrocery_delivery/provider/auth/auth_local_provider.dart';
import 'package:instant_grrocery_delivery/provider/service/service_provider.dart';

class AuthController extends StateNotifier<ResultValue<AuthResponse>> {
  AuthController(this.ref) : super(const ResultValue.empty()) {
    ref.read(getAuthUserProvider.future).then((value) {
      if (value != null) {
        state = ResultValue.data(value);
      }
    });
  }

  final Ref ref;

  void signUp(CreateUserRequest createUser) async {
    try {
      state = const ResultValue.loading();
      final authUser = await ref.read(authServiceProvider).signUp(createUser);
      state = ResultValue.data(authUser);
    } catch (_) {
      state = ResultValue.error(Exception("Failed to sign up"));
    }
  }

  void login(LoginRequest loginUser) async {
    try {
      state = const ResultValue.loading();
      final authUser = await ref.read(authServiceProvider).login(loginUser);
      state = ResultValue.data(authUser);
    } catch (_) {
      state = ResultValue.error(Exception("Failed to login"));
    }
  }

  void update(UpdateUserRequest updateUser) async {
    try {
      state = const ResultValue.loading();
      final savedAuthUser = await ref.read(getAuthUserProvider.future);

      if (savedAuthUser == null) {
        throw Exception('Failed to get auth user');
      }

      final newAuthUser = await ref
          .read(authServiceProvider)
          .update(
            userId: savedAuthUser.user.id,
            updateUser: updateUser,
            currentJwt: savedAuthUser.jwt,
          );

      state = ResultValue.data(newAuthUser);
    } catch (_) {
      state = ResultValue.error(Exception("Failed to update user"));
    }
  }

  void logout() async {
    try {
      state = const ResultValue.loading();
      await ref.read(authServiceProvider).logout();
      state = const ResultValue.empty();
    } catch (_) {
      state = ResultValue.error(Exception("Failed to logout"));
    }
  }
}

final authControllerProvider =
    StateNotifierProvider<AuthController, ResultValue<AuthResponse>>(
      (ref) => AuthController(ref),
    );
