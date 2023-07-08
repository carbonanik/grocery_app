// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCreateDto _$OrderCreateDtoFromJson(Map<String, dynamic> json) =>
    OrderCreateDto(
      count: json['count'] as int,
      totalPrice: json['totalPrice'] as String,
      orderDate: json['orderDate'] as String,
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => OrderItemCreateDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      coupons: (json['coupons'] as List<dynamic>)
          .map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: UserInOrderCreateDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderCreateDtoToJson(OrderCreateDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'totalPrice': instance.totalPrice,
      'orderDate': instance.orderDate,
      'orderItems': instance.orderItems.map((e) => e.toJson()).toList(),
      'coupons': instance.coupons.map((e) => e.toJson()).toList(),
      'user': instance.user.toJson(),
    };

OrderItemCreateDto _$OrderItemCreateDtoFromJson(Map<String, dynamic> json) =>
    OrderItemCreateDto(
      count: json['count'] as int,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemCreateDtoToJson(OrderItemCreateDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'product': instance.product.toJson(),
    };

UserInOrderCreateDto _$UserInOrderCreateDtoFromJson(
        Map<String, dynamic> json) =>
    UserInOrderCreateDto(
      connect: (json['connect'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$UserInOrderCreateDtoToJson(
        UserInOrderCreateDto instance) =>
    <String, dynamic>{
      'connect': instance.connect,
    };
