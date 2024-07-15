// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<_$UserImpl> {
  @override
  final int typeId = 2;

  @override
  _$UserImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserImpl(
      id: fields[0] as int,
      username: fields[1] as String,
      email: fields[2] as String,
      provider: fields[3] as String?,
      confirmed: fields[4] as bool?,
      blocked: fields[5] as bool?,
      fullName: fields[6] as String?,
      phone: fields[7] as String?,
      isActive: fields[8] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, _$UserImpl obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.provider)
      ..writeByte(4)
      ..write(obj.confirmed)
      ..writeByte(5)
      ..write(obj.blocked)
      ..writeByte(6)
      ..write(obj.fullName)
      ..writeByte(7)
      ..write(obj.phone)
      ..writeByte(8)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUserRequestImpl _$$CreateUserRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUserRequestImpl(
      email: json['email'] as String,
      username: json['username'] as String,
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$CreateUserRequestImplToJson(
        _$CreateUserRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'fullName': instance.fullName,
      'phone': instance.phone,
      'password': instance.password,
    };

_$UpdateUserRequestImpl _$$UpdateUserRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserRequestImpl(
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$UpdateUserRequestImplToJson(
        _$UpdateUserRequestImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'phone': instance.phone,
      'email': instance.email,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
      provider: json['provider'] as String?,
      confirmed: json['confirmed'] as bool?,
      blocked: json['blocked'] as bool?,
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
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
