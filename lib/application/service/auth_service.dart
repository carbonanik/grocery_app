import 'package:instant_grrocery_delivery/data_source/local/auth_local.dart';
import 'package:instant_grrocery_delivery/domain/repository/auth_repository.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';

class AuthService {
  final AuthRepository _authRepository;
  final AuthLocal _authLocal;

  AuthService(this._authRepository, this._authLocal);

  Future<AuthResponse> signUp(CreateUserRequest createUser) async {
    final authUser = await _authRepository.register(createUser);
    await _authLocal.putAuthUser(authUser);
    return authUser;
  }

  Future<AuthResponse> login(LoginRequest loginUser) async {
    final authUser = await _authRepository.login(loginUser);
    await _authLocal.putAuthUser(authUser);
    return authUser;
  }

  Future<AuthResponse> update({
    required int userId,
    required UpdateUserRequest updateUser,
    required String currentJwt,
  }) async {
    final user = await _authRepository.update(
      userId: userId,
      updateUser: updateUser,
    );
    final newAuthUser = AuthResponse(jwt: currentJwt, user: user);
    await _authLocal.putAuthUser(newAuthUser);
    return newAuthUser;
  }

  Future<void> logout() async {
    await _authLocal.removeAuthUser();
  }
}
