// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderReadDtoImpl _$$OrderReadDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderReadDtoImpl(
      id: (json['id'] as num).toInt(),
      attributes:
          OrderSubReadDto.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderReadDtoImplToJson(_$OrderReadDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$OrderSubReadDtoImpl _$$OrderSubReadDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderSubReadDtoImpl(
      count: (json['count'] as num).toInt(),
      totalPrice: json['totalPrice'] as String,
      orderDate: json['orderDate'] as String,
      orderStatus: json['orderStatus'] as String,
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => OrderItemReadDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      coupons: (json['coupons'] as List<dynamic>)
          .map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: UserInOrderReadDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderSubReadDtoImplToJson(
        _$OrderSubReadDtoImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'totalPrice': instance.totalPrice,
      'orderDate': instance.orderDate,
      'orderStatus': instance.orderStatus,
      'orderItems': instance.orderItems,
      'coupons': instance.coupons,
      'user': instance.user,
    };

_$OrderItemReadDtoImpl _$$OrderItemReadDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderItemReadDtoImpl(
      count: (json['count'] as num).toInt(),
      product: ProductDto.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderItemReadDtoImplToJson(
        _$OrderItemReadDtoImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'product': instance.product,
    };

_$UserInOrderReadDtoImpl _$$UserInOrderReadDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInOrderReadDtoImpl(
      data: UserReadDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInOrderReadDtoImplToJson(
        _$UserInOrderReadDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$UserReadDtoImpl _$$UserReadDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserReadDtoImpl(
      id: (json['id'] as num).toInt(),
      attributes:
          UserSubReadDto.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserReadDtoImplToJson(_$UserReadDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$UserSubReadDtoImpl _$$UserSubReadDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserSubReadDtoImpl(
      username: json['username'] as String,
      email: json['email'] as String,
      provider: json['provider'] as String,
      confirmed: json['confirmed'] as String,
      blocked: json['blocked'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      fullName: json['fullName'] as String,
      phone: json['phone'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$UserSubReadDtoImplToJson(
        _$UserSubReadDtoImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'provider': instance.provider,
      'confirmed': instance.confirmed,
      'blocked': instance.blocked,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'fullName': instance.fullName,
      'phone': instance.phone,
      'isActive': instance.isActive,
    };
