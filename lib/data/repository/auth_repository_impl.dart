import 'package:instant_grrocery_delivery/data_source/api/auth_api.dart';
import 'package:instant_grrocery_delivery/domain/repository/auth_repository.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi _authApi;

  AuthRepositoryImpl(this._authApi);

  @override
  Future<AuthResponse> login(LoginRequest loginUser) =>
      _authApi.login(loginUser);

  @override
  Future<AuthResponse> register(CreateUserRequest createUser) =>
      _authApi.register(createUser);

  @override
  Future<User> update({
    required int userId,
    required UpdateUserRequest updateUser,
  }) => _authApi.update(userId: userId, updateUser: updateUser);

  @override
  Future<AuthResponse> getMe(AuthResponse token) => _authApi.getMe(token);
}
