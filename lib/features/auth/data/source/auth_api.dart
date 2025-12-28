import 'package:instant_grrocery_delivery/features/auth/data/model/login.dart';
import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';
import 'package:instant_grrocery_delivery/features/profile/data/model/user.dart';

abstract class AuthApi {
  Future<AuthResponse> login(LoginRequest loginUser);

  Future<AuthResponse> register(CreateUserRequest createUser);

  Future<User> update({
    required int userId,
    required UpdateUserRequest updateUser,
  });

  Future<AuthResponse> getMe(AuthResponse token);
}

