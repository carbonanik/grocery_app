// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthResponseAdapter extends TypeAdapter<_$AuthResponseImpl> {
  @override
  final int typeId = 1;

  @override
  _$AuthResponseImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$AuthResponseImpl(
      jwt: fields[0] as String,
      user: fields[1] as User,
    );
  }

  @override
  void write(BinaryWriter writer, _$AuthResponseImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.jwt)
      ..writeByte(1)
      ..write(obj.user);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      jwt: json['jwt'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'user': instance.user,
    };
