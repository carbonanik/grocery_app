// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRequestDto _$$_LoginRequestDtoFromJson(Map<String, dynamic> json) =>
    _$_LoginRequestDto(
      identifier: json['identifier'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_LoginRequestDtoToJson(_$_LoginRequestDto instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'password': instance.password,
    };

_$_AuthResponseDto _$$_AuthResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_AuthResponseDto(
      jwt: json['jwt'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthResponseDtoToJson(_$_AuthResponseDto instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'user': instance.user,
    };
