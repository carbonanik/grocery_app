import 'package:instant_grrocery_delivery/domain/repository/auth_repository.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';

// Import collection to use List extensions if available, or use standard iterables
// import 'package:instant_grrocery_delivery/util/extension/list/extension.dart';

class MockAuthRepository implements AuthRepository {
  @override
  Future<AuthResponse> login(LoginRequest loginUser) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final user = _userJson.firstWhere(
      (element) => element["email"] == loginUser.identifier,
      orElse: () => throw Exception('User not found'),
    );

    if (user["password"] == loginUser.password) {
      return AuthResponse(
        jwt: 'token:${user["id"]}',
        user: User.fromJson(user),
      );
    } else {
      throw Exception('Wrong password or user not found');
    }
  }

  @override
  Future<AuthResponse> getMe(AuthResponse token) async {
    await Future.delayed(const Duration(milliseconds: 500));
    // Hacky mock implementation: assume token contains id after colon
    final parts = token.jwt.split(':');
    if (parts.length > 1) {
      final id = int.tryParse(parts[1]);
      if (id != null) {
        final user = _userJson.firstWhere(
          (element) => element["id"] == id,
          orElse: () => throw Exception('User not found via token'),
        );
        return AuthResponse(jwt: token.jwt, user: User.fromJson(user));
      }
    }
    throw UnimplementedError('Invalid mock token');
  }

  @override
  Future<AuthResponse> register(CreateUserRequest createUser) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final id = _userJson.length + 1;

    final newUser = {
      "id": id,
      "username": createUser.username,
      "email": createUser.email,
      "password": createUser.password,
      "fullName": createUser.fullName ?? "",
      "phone": createUser.phone ?? "",
    };
    _userJson.add(newUser);

    return AuthResponse(jwt: 'token:$id', user: User.fromJson(newUser));
  }

  @override
  Future<User> update({
    required int userId,
    required UpdateUserRequest updateUser,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));

    final i = _userJson.indexWhere((element) => element["id"] == userId);
    if (i == -1) throw Exception('User not found');

    final user = _userJson[i];
    user["email"] = updateUser.email ?? user["email"] ?? "";
    user["phone"] = updateUser.phone ?? user["phone"] ?? "";
    user["fullName"] = updateUser.fullName ?? user["fullName"] ?? "";

    _userJson[i] = user;
    return User.fromJson(user);
  }
}

final _userJson = [
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
  },
];
