// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderCreateDto _$$_OrderCreateDtoFromJson(Map<String, dynamic> json) =>
    _$_OrderCreateDto(
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

Map<String, dynamic> _$$_OrderCreateDtoToJson(_$_OrderCreateDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'totalPrice': instance.totalPrice,
      'orderDate': instance.orderDate,
      'orderItems': instance.orderItems,
      'coupons': instance.coupons,
      'user': instance.user,
    };

_$_OrderItemCreateDto _$$_OrderItemCreateDtoFromJson(
        Map<String, dynamic> json) =>
    _$_OrderItemCreateDto(
      count: json['count'] as int,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderItemCreateDtoToJson(
        _$_OrderItemCreateDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'product': instance.product,
    };

_$_UserInOrderCreateDto _$$_UserInOrderCreateDtoFromJson(
        Map<String, dynamic> json) =>
    _$_UserInOrderCreateDto(
      connect: (json['connect'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_UserInOrderCreateDtoToJson(
        _$_UserInOrderCreateDto instance) =>
    <String, dynamic>{
      'connect': instance.connect,
    };
