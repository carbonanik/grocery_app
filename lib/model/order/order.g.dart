// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderAdapter extends TypeAdapter<_$OrderImpl> {
  @override
  final int typeId = 4;

  @override
  _$OrderImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$OrderImpl(
      id: fields[0] as int,
      userId: fields[1] as int?,
      orderItems: (fields[2] as List).cast<OrderItem>(),
      count: fields[3] as int,
      totalPrice: fields[4] as String,
      orderDate: fields[5] as String,
      orderStatus: fields[6] as String,
      coupons: (fields[7] as List).cast<Coupon>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$OrderImpl obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(3)
      ..write(obj.count)
      ..writeByte(4)
      ..write(obj.totalPrice)
      ..writeByte(5)
      ..write(obj.orderDate)
      ..writeByte(6)
      ..write(obj.orderStatus)
      ..writeByte(2)
      ..write(obj.orderItems)
      ..writeByte(7)
      ..write(obj.coupons);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
      totalPrice: json['totalPrice'] as String,
      orderDate: json['orderDate'] as String,
      orderStatus: json['orderStatus'] as String,
      coupons: (json['coupons'] as List<dynamic>)
          .map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'orderItems': instance.orderItems,
      'count': instance.count,
      'totalPrice': instance.totalPrice,
      'orderDate': instance.orderDate,
      'orderStatus': instance.orderStatus,
      'coupons': instance.coupons,
    };
