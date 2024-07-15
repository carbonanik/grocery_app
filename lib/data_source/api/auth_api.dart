import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';

abstract class AuthApi {
  Future<AuthResponse> login(LoginRequest loginUser);

  Future<AuthResponse> register(CreateUserRequest createUser);

  Future<User> update({
    required int userId,
    required UpdateUserRequest updateUser,
  });

  Future<AuthResponse> getMe(AuthResponse token);
}
