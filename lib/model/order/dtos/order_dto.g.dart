// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderReadDto _$$_OrderReadDtoFromJson(Map<String, dynamic> json) =>
    _$_OrderReadDto(
      id: json['id'] as int,
      attributes:
          OrderSubReadDto.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderReadDtoToJson(_$_OrderReadDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$_OrderSubReadDto _$$_OrderSubReadDtoFromJson(Map<String, dynamic> json) =>
    _$_OrderSubReadDto(
      count: json['count'] as int,
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

Map<String, dynamic> _$$_OrderSubReadDtoToJson(_$_OrderSubReadDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'totalPrice': instance.totalPrice,
      'orderDate': instance.orderDate,
      'orderStatus': instance.orderStatus,
      'orderItems': instance.orderItems,
      'coupons': instance.coupons,
      'user': instance.user,
    };

_$_OrderItemReadDto _$$_OrderItemReadDtoFromJson(Map<String, dynamic> json) =>
    _$_OrderItemReadDto(
      count: json['count'] as int,
      product: ProductDto.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderItemReadDtoToJson(_$_OrderItemReadDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'product': instance.product,
    };

_$_UserInOrderReadDto _$$_UserInOrderReadDtoFromJson(
        Map<String, dynamic> json) =>
    _$_UserInOrderReadDto(
      data: UserReadDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserInOrderReadDtoToJson(
        _$_UserInOrderReadDto instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_UserReadDto _$$_UserReadDtoFromJson(Map<String, dynamic> json) =>
    _$_UserReadDto(
      id: json['id'] as int,
      attributes:
          UserSubReadDto.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserReadDtoToJson(_$_UserReadDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$_UserSubReadDto _$$_UserSubReadDtoFromJson(Map<String, dynamic> json) =>
    _$_UserSubReadDto(
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

Map<String, dynamic> _$$_UserSubReadDtoToJson(_$_UserSubReadDto instance) =>
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
