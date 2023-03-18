// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCreate _$OrderCreateFromJson(Map<String, dynamic> json) => OrderCreate(
      userId: json['user_id'] as int?,
      orderItems: (json['order_items'] as List<dynamic>)
          .map((e) => OrderItemCreate.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int,
      totalPrice: json['total_price'] as String,
      orderDate: json['order_date'] as String,
      orderStatus: json['order_status'] as String,
      coupons: (json['coupons'] as List<dynamic>)
          .map((e) => CouponCreate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderCreateToJson(OrderCreate instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'order_items': instance.orderItems.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'total_price': instance.totalPrice,
      'order_date': instance.orderDate,
      'order_status': instance.orderStatus,
      'coupons': instance.coupons.map((e) => e.toJson()).toList(),
    };

OrderItemCreate _$OrderItemCreateFromJson(Map<String, dynamic> json) =>
    OrderItemCreate(
      productId: json['product_id'] as int,
      count: json['count'] as int,
    );

Map<String, dynamic> _$OrderItemCreateToJson(OrderItemCreate instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'count': instance.count,
    };

CouponCreate _$CouponCreateFromJson(Map<String, dynamic> json) => CouponCreate(
      id: json['id'] as int,
    );

Map<String, dynamic> _$CouponCreateToJson(CouponCreate instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
