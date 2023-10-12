// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderCreateImpl _$$OrderCreateImplFromJson(Map<String, dynamic> json) =>
    _$OrderCreateImpl(
      userId: json['userId'] as int,
      count: json['count'] as int,
      totalPrice: json['totalPrice'] as String,
      orderDate: json['orderDate'] as String,
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      coupons: (json['coupons'] as List<dynamic>)
          .map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderCreateImplToJson(_$OrderCreateImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'count': instance.count,
      'totalPrice': instance.totalPrice,
      'orderDate': instance.orderDate,
      'orderItems': instance.orderItems,
      'coupons': instance.coupons,
    };

_$OrderCreateDtoImpl _$$OrderCreateDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderCreateDtoImpl(
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

Map<String, dynamic> _$$OrderCreateDtoImplToJson(
        _$OrderCreateDtoImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'totalPrice': instance.totalPrice,
      'orderDate': instance.orderDate,
      'orderItems': instance.orderItems,
      'coupons': instance.coupons,
      'user': instance.user,
    };

_$OrderItemCreateDtoImpl _$$OrderItemCreateDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderItemCreateDtoImpl(
      count: json['count'] as int,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderItemCreateDtoImplToJson(
        _$OrderItemCreateDtoImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'product': instance.product,
    };

_$UserInOrderCreateDtoImpl _$$UserInOrderCreateDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInOrderCreateDtoImpl(
      connect: (json['connect'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$UserInOrderCreateDtoImplToJson(
        _$UserInOrderCreateDtoImpl instance) =>
    <String, dynamic>{
      'connect': instance.connect,
    };
