// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as int,
      userId: json['userId'] as int?,
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int,
      totalPrice: json['totalPrice'] as String,
      orderDate: json['orderDate'] as String,
      orderStatus: json['orderStatus'] as String,
      coupons: (json['coupons'] as List<dynamic>)
          .map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'orderItems': instance.orderItems.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'totalPrice': instance.totalPrice,
      'orderDate': instance.orderDate,
      'orderStatus': instance.orderStatus,
      'coupons': instance.coupons.map((e) => e.toJson()).toList(),
    };
