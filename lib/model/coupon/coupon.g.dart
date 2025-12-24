// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CouponAdapter extends TypeAdapter<_Coupon> {
  @override
  final typeId = 5;

  @override
  _Coupon read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _Coupon(
      id: (fields[0] as num).toInt(),
      title: fields[1] as String,
      description: fields[2] as String,
      code: fields[3] as String,
      discount: (fields[4] as num).toDouble(),
      fixed: (fields[5] as num).toDouble(),
      status: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _Coupon obj) {
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

_Coupon _$CouponFromJson(Map<String, dynamic> json) => _Coupon(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  code: json['code'] as String,
  discount: (json['discount'] as num).toDouble(),
  fixed: (json['fixed'] as num).toDouble(),
  status: json['status'] as String,
);

Map<String, dynamic> _$CouponToJson(_Coupon instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'code': instance.code,
  'discount': instance.discount,
  'fixed': instance.fixed,
  'status': instance.status,
};
