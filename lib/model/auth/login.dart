import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginRequestDto {
  String identifier;
  String password;

  LoginRequestDto({
    required this.identifier,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$LoginRequestDtoToJson(this);

  factory LoginRequestDto.fromJson(Map<String, dynamic> source) =>
      _$LoginRequestDtoFromJson(source);
}

@JsonSerializable(explicitToJson: true)
class AuthResponseDto {
  String jwt;
  UserDto user;

  AuthResponseDto({
    required this.jwt,
    required this.user,
  });

  Map<String, dynamic> toJson() => _$AuthResponseDtoToJson(this);

  factory AuthResponseDto.fromJson(Map<String, dynamic> source) =>
      _$AuthResponseDtoFromJson(source);

  String authorizationToken() {
    return 'Bearer $jwt';
  }
}

@JsonSerializable(explicitToJson: true)
class UserDto {
  int id;
  String? username;
  String? email;
  String? provider;
  bool? confirmed;
  bool? blocked;
  String? fullName;
  String? phone;
  bool? isActive;

  UserDto({
    required this.id,
    required this.username,
    required this.email,
    required this.provider,
    required this.confirmed,
    required this.blocked,
    required this.fullName,
    required this.phone,
    required this.isActive,
  });

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  factory UserDto.fromJson(Map<String, dynamic> source) =>
      _$UserDtoFromJson(source);
}
