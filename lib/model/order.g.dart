// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as int,
      userId: json['user_id'] as int?,
      orderItems: (json['order_items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int,
      totalPrice: json['total_price'].toString(),
      orderDate: json['order_date'] as String,
      orderStatus: json['order_status'] as String,
      coupons: (json['coupons'] as List<dynamic>)
          .map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'order_items': instance.orderItems.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'total_price': instance.totalPrice,
      'order_date': instance.orderDate,
      'order_status': instance.orderStatus,
      'coupons': instance.coupons.map((e) => e.toJson()).toList(),
    };
