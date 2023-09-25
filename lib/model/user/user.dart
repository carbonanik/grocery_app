import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';
part 'user.freezed.dart';


@freezed
class CreateUserRequest with _$CreateUserRequest {

  const factory CreateUserRequest({
    required String email,
    required String username,
    String? fullName,
    String? phone,
    required String password,
  }) = _CreateUserRequest;

  factory CreateUserRequest.fromJson(Map<String, dynamic> source) =>
      _$CreateUserRequestFromJson(source);
}

@freezed
class UpdateUserRequest with _$UpdateUserRequest {

  const factory UpdateUserRequest({
    String? fullName,
    String? phone,
    String? email,
  }) = _UpdateUserRequest;

  factory UpdateUserRequest.fromJson(Map<String, dynamic> source) =>
      _$UpdateUserRequestFromJson(source);
}

@freezed
class User with _$User {

  const factory User({
    required int id,
    required String username,
    required String email,
    required String provider,
    required bool confirmed,
    required bool blocked,
    required String fullName,
    required String phone,
    required bool isActive,
  }) = _User;


  factory User.fromJson(Map<String, dynamic> source) =>
      _$UserFromJson(source);
}
