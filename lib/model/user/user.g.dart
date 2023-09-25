// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateUserRequest _$$_CreateUserRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateUserRequest(
      email: json['email'] as String,
      username: json['username'] as String,
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_CreateUserRequestToJson(
        _$_CreateUserRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'fullName': instance.fullName,
      'phone': instance.phone,
      'password': instance.password,
    };

_$_UpdateUserRequest _$$_UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    _$_UpdateUserRequest(
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_UpdateUserRequestToJson(
        _$_UpdateUserRequest instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'phone': instance.phone,
      'email': instance.email,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      provider: json['provider'] as String,
      confirmed: json['confirmed'] as bool,
      blocked: json['blocked'] as bool,
      fullName: json['fullName'] as String,
      phone: json['phone'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
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
