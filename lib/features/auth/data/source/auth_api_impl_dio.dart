import 'package:instant_grrocery_delivery/core/api/paths.dart';
import 'package:instant_grrocery_delivery/core/dio_client.dart';
import 'package:instant_grrocery_delivery/core/method_types.dart';
import 'package:instant_grrocery_delivery/features/auth/data/model/login.dart';
import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';
import 'package:instant_grrocery_delivery/features/auth/data/source/auth_api.dart';
import 'package:instant_grrocery_delivery/features/profile/data/model/user.dart';

class AuthApiImpl extends AuthApi {
  final DioClient client;

  AuthApiImpl(this.client);

  @override
  Future<AuthResponse> register(CreateUserRequest createUser) async {
    return await client.request(
      path: Paths.register,
      method: MethodType.post,
      payload: createUser.toJson(),
      parse: AuthResponse.fromJson,
    );
  }

  @override
  Future<AuthResponse> login(LoginRequest loginUser) async {
    return await client.request(
      path: Paths.login,
      method: MethodType.post,
      payload: loginUser.toJson(),
      parse: AuthResponse.fromJson,
    );
  }

  @override
  Future<User> update({
    required int userId,
    required UpdateUserRequest updateUser,
  }) async {
    return await client.request(
      path: '${Paths.updateUser}/$userId',
      method: MethodType.put,
      payload: updateUser.toJson(),
      parse: User.fromJson,
    );
  }

  @override
  Future<AuthResponse> getMe(AuthResponse token) async {
    return await client.request(
      path: Paths.login,
      method: MethodType.get,
      payload: token.toJson(),
      parse: AuthResponse.fromJson,
    );
  }
}
