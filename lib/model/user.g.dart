// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUserDto _$CreateUserDtoFromJson(Map<String, dynamic> json) =>
    CreateUserDto(
      email: json['email'] as String,
      username: json['username'] as String,
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String,
    );

Map<String, dynamic> _$CreateUserDtoToJson(CreateUserDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'fullName': instance.fullName,
      'phone': instance.phone,
      'password': instance.password,
    };

UpdateUserDto _$UpdateUserDtoFromJson(Map<String, dynamic> json) =>
    UpdateUserDto(
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UpdateUserDtoToJson(UpdateUserDto instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'phone': instance.phone,
      'email': instance.email,
    };
