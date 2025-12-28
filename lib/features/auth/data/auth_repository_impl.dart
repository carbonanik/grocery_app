import 'package:instant_grrocery_delivery/features/auth/data/source/auth_api.dart';
import 'package:instant_grrocery_delivery/features/auth/domain/auth_repository.dart';
import 'package:instant_grrocery_delivery/features/auth/data/model/login.dart';
import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';
import 'package:instant_grrocery_delivery/features/profile/data/model/user.dart';

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

