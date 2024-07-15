// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CouponAdapter extends TypeAdapter<_$CouponImpl> {
  @override
  final int typeId = 5;

  @override
  _$CouponImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CouponImpl(
      id: fields[0] as int,
      title: fields[1] as String,
      description: fields[2] as String,
      code: fields[3] as String,
      discount: fields[4] as double,
      fixed: fields[5] as double,
      status: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$CouponImpl obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.code)
      ..writeByte(4)
      ..write(obj.discount)
      ..writeByte(5)
      ..write(obj.fixed)
      ..writeByte(6)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CouponAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponImpl _$$CouponImplFromJson(Map<String, dynamic> json) => _$CouponImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      code: json['code'] as String,
      discount: (json['discount'] as num).toDouble(),
      fixed: (json['fixed'] as num).toDouble(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$CouponImplToJson(_$CouponImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'code': instance.code,
      'discount': instance.discount,
      'fixed': instance.fixed,
      'status': instance.status,
    };
