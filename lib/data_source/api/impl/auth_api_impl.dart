import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:instant_grrocery_delivery/data_source/api/auth_api.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/extensions.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/header.dart';

import '../../../model/auth/login.dart';
import '../../../model/user.dart';
import '../util/paths.dart';

class AuthApiImpl extends AuthApi {
  @override
  Future<AuthResponseDto> register(CreateUserDto createUser) async {
    final response = await http.post(
      getUri(path: ApiPath.register),
      headers: getHeader(),
      body: json.encode(createUser),
    );

    if (response.ok) {
      return AuthResponseDto.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to create user');
    }
  }

  @override
  Future<AuthResponseDto> login(LoginRequestDto loginUser) async {
    print(loginUser);
    final response = await http.post(
      getUri(path: ApiPath.login),
      headers: getHeader(),
      body: json.encode(loginUser),
    );
    if (response.ok) {
      return AuthResponseDto.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to login');
    }
  }

  @override
  Future<UserDto> update({
    required AuthResponseDto authUser,
    required UpdateUserDto updateUser,
  }) async {
    final response = await http.put(
      getUri(path: '${ApiPath.updateUser}/${authUser.user.id}'),
      headers: getHeader(token: authUser),
      body: json.encode(updateUser),
    );
    print("======================================");
    print(response.body);
    print(response.statusCode);
    if (response.ok) {
      return UserDto.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to update user');
    }
  }

  @override
  Future<void> logout() async {}

  @override
  Future<AuthResponseDto> getMe(AuthResponseDto token) async {
    final response = await http.get(
      getUri(path: ApiPath.login),
      headers: getHeader(token: token),
    );
    if (response.ok) {
      return AuthResponseDto.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to get current user');
    }
  }
}
