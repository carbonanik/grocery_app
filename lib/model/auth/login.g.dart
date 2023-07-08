// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestDto _$LoginRequestDtoFromJson(Map<String, dynamic> json) =>
    LoginRequestDto(
      identifier: json['identifier'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginRequestDtoToJson(LoginRequestDto instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'password': instance.password,
    };

AuthResponseDto _$AuthResponseDtoFromJson(Map<String, dynamic> json) =>
    AuthResponseDto(
      jwt: json['jwt'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthResponseDtoToJson(AuthResponseDto instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'user': instance.user.toJson(),
    };

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      id: json['id'] as int,
      username: json['username'] as String?,
      email: json['email'] as String?,
      provider: json['provider'] as String?,
      confirmed: json['confirmed'] as bool?,
      blocked: json['blocked'] as bool?,
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'provider': instance.provider,
      'confirmed': instance.confirmed,
      'blocked': instance.blocked,
      'fullName': instance.fullName,
      'phone': instance.phone,
      'isActive': instance.isActive,
    };
