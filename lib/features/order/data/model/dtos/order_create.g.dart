// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderCreate _$OrderCreateFromJson(Map<String, dynamic> json) => _OrderCreate(
  userId: (json['userId'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  totalPrice: json['totalPrice'] as String,
  orderDate: json['orderDate'] as String,
  orderItems: (json['orderItems'] as List<dynamic>)
      .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  coupons: (json['coupons'] as List<dynamic>)
      .map((e) => Coupon.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OrderCreateToJson(_OrderCreate instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'count': instance.count,
      'totalPrice': instance.totalPrice,
      'orderDate': instance.orderDate,
      'orderItems': instance.orderItems,
      'coupons': instance.coupons,
    };

_OrderCreateDto _$OrderCreateDtoFromJson(Map<String, dynamic> json) =>
    _OrderCreateDto(
      count: (json['count'] as num).toInt(),
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

Map<String, dynamic> _$OrderCreateDtoToJson(_OrderCreateDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'totalPrice': instance.totalPrice,
      'orderDate': instance.orderDate,
      'orderItems': instance.orderItems,
      'coupons': instance.coupons,
      'user': instance.user,
    };

_OrderItemCreateDto _$OrderItemCreateDtoFromJson(Map<String, dynamic> json) =>
    _OrderItemCreateDto(
      count: (json['count'] as num).toInt(),
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemCreateDtoToJson(_OrderItemCreateDto instance) =>
    <String, dynamic>{'count': instance.count, 'product': instance.product};

_UserInOrderCreateDto _$UserInOrderCreateDtoFromJson(
  Map<String, dynamic> json,
) => _UserInOrderCreateDto(
  connect: (json['connect'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$UserInOrderCreateDtoToJson(
  _UserInOrderCreateDto instance,
) => <String, dynamic>{'connect': instance.connect};
