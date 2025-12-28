// import 'package:get/get_utils/get_utils.dart';
import 'package:instant_grrocery_delivery/features/auth/data/source/auth_api.dart';
import 'package:instant_grrocery_delivery/core/simulate_fetch.dart';
import 'package:instant_grrocery_delivery/features/auth/data/model/login.dart';
import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';
import 'package:instant_grrocery_delivery/features/profile/data/model/user.dart';
import 'package:instant_grrocery_delivery/core/util/extension/list/extension.dart';

class AuthApiMockImpl extends AuthApi {
  @override
  Future<AuthResponse> login(LoginRequest loginUser) async {
    await simulateFetch();
    final user = userJson.firstWhereOrNull(
        (element) => element["email"] == loginUser.identifier);
    if (user == null) {
      throw Exception('User not found');
    }
    if (user["password"] == loginUser.password) {
      return AuthResponse(
        jwt: 'token:${user["id"]}',
        user: User.fromJson(user),
      );
    } else {
      throw Exception('Wrong password');
    }
  }

  @override
  Future<AuthResponse> getMe(AuthResponse token) {
    // TODO: implement getMe
    throw UnimplementedError();
  }

  @override
  Future<AuthResponse> register(CreateUserRequest createUser) async {
    await simulateFetch();
    final id = userJson.length + 1;

    userJson.add({
      "id": id,
      "username": createUser.username,
      "email": createUser.email,
      "password": createUser.password,
      "fullName": createUser.fullName ?? "",
      "phone": createUser.phone ?? "",
    });

    final user = userJson.firstWhere((element) => element["id"] == id);
    return AuthResponse(
      jwt: 'token:${user["id"]}',
      user: User.fromJson(user),
    );
  }

  @override
  Future<User> update({
    required int userId,
    required UpdateUserRequest updateUser,
  }) async {
    await simulateFetch();

    final i = userJson.indexWhere((element) => element["id"] == userId);
    final user = userJson[i];
    user["email"] = updateUser.email ?? user["email"] ?? "";
    user["phone"] = updateUser.phone ?? user["phone"] ?? "";
    user["fullName"] = updateUser.fullName ?? user["fullName"] ?? "";

    userJson[i] = user;
    return User.fromJson(user);
  }
}

final userJson = [
  {
    "id": 1,
    "username": "user1",
    "email": "u1@email.com",
    "password": "123456",
    "fullName": "User 1",
    "phone": "123456",
  },
  {
    "id": 2,
    "username": "user2",
    "email": "u2@email.com",
    "password": "123456",
    "fullName": "User 2",
    "phone": "123456",
  }
];

