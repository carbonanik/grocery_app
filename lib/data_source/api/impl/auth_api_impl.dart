import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:instant_grrocery_delivery/data_source/api/auth_api.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/extensions.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/header.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';

import '../../../model/auth/login.dart';
import '../../../model/user/user.dart';
import '../util/paths.dart';

class AuthApiImpl extends AuthApi {
  @override
  Future<AuthResponse> register(CreateUserRequest createUser) async {
    final response = await http.post(
      getUri(path: ApiPath.register),
      headers: getHeader(),
      body: json.encode(createUser),
    );

    if (response.ok) {
      return AuthResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to create user');
    }
  }

  @override
  Future<AuthResponse> login(LoginRequest loginUser) async {
    final response = await http.post(
      getUri(path: ApiPath.login),
      headers: getHeader(),
      body: json.encode(loginUser),
    );
    if (response.ok) {
      return AuthResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to login');
    }
  }

  @override
  Future<User> update({
    required AuthResponse authUser,
    required UpdateUserRequest updateUser,
  }) async {
    final response = await http.put(
      getUri(path: '${ApiPath.updateUser}/${authUser.user.id}'),
      headers: getHeader(token: authUser),
      body: json.encode(updateUser),
    );

    if (response.ok) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to update user');
    }
  }

  @override
  Future<void> logout() async {}

  @override
  Future<AuthResponse> getMe(AuthResponse token) async {
    final response = await http.get(
      getUri(path: ApiPath.login),
      headers: getHeader(token: token),
    );
    if (response.ok) {
      return AuthResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to get current user');
    }
  }
}
