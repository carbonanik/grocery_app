import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/result_value.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_api_provider.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_local_provider.dart';

abstract class AuthControllerBase {
  void signUp(CreateUserRequest createUser);

  void login(LoginRequest loginUser);

  void logout();

  void update(UpdateUserRequest updateUser);
}

class AuthController extends StateNotifier<ResultValue<AuthResponse>> implements AuthControllerBase {
  AuthController(this.ref) : super(const ResultValue.empty()) {
    ref.read(getAuthUserProvider.future).then((value) {
      if (value != null) {
        state = ResultValue.data(value);
      }
    });
  }

  final Ref ref;

  @override
  void signUp(CreateUserRequest createUser) async {
    try {
      // ? Loading state
      state = const ResultValue.loading();

      final authUser = await ref.read(authApiProvider).register(createUser);
      await ref.read(saveAuthUserProvider(authUser).future);

      // ? Success state
      state = ResultValue.data(authUser);
    } catch (_) {
      state = ResultValue.error(Exception("Failed to sign up")); // ? Error state
    }
  }

  @override
  void login(LoginRequest loginUser) async {
    try {
      state = const ResultValue.loading(); // ? Loading state
      final authUser = await ref.read(authApiProvider).login(loginUser);
      await ref.read(saveAuthUserProvider(authUser).future);
      state = ResultValue.data(authUser); // ? Success state
    } catch (_) {
      state = ResultValue.error(Exception("Failed to login")); // ? Error state
    }
  }

  @override
  void update(UpdateUserRequest updateUser) async {
    try {
      state = const ResultValue.loading(); // ? Loading state
      final savedAuthUser = await ref.read(getAuthUserProvider.future);

      if (savedAuthUser == null) {
        throw Exception('Failed to get auth user');
      }

      final user = await ref.read(authApiProvider).update(
        authUser: savedAuthUser,
        updateUser: updateUser,
      );

      final newAuthUser = AuthResponse(jwt: savedAuthUser.jwt, user: user);

      await ref.read(saveAuthUserProvider(newAuthUser).future);
      state = ResultValue.data(newAuthUser); // ? Success state
    } catch (_) {
      state = ResultValue.error(Exception("Failed to update user")); // ? Error state
    }
  }

  @override
  void logout() async {
    try {
      state = const ResultValue.loading(); // ? Loading state
      await ref.read(authLocalProvider).removeAuthUser();
      state = const ResultValue.empty(); // ? Success state
    } catch (_) {
      state = ResultValue.error(Exception("Failed to update user")); // ? Error state
    }
  }
}

final authControllerProvider = StateNotifierProvider<AuthController, ResultValue<AuthResponse>>(
      (ref) => AuthController(ref),
);
