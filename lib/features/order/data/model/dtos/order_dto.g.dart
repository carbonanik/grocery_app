// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderReadDto _$OrderReadDtoFromJson(Map<String, dynamic> json) =>
    _OrderReadDto(
      id: (json['id'] as num).toInt(),
      attributes: OrderSubReadDto.fromJson(
        json['attributes'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$OrderReadDtoToJson(_OrderReadDto instance) =>
    <String, dynamic>{'id': instance.id, 'attributes': instance.attributes};

_OrderSubReadDto _$OrderSubReadDtoFromJson(Map<String, dynamic> json) =>
    _OrderSubReadDto(
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

Map<String, dynamic> _$OrderSubReadDtoToJson(_OrderSubReadDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'totalPrice': instance.totalPrice,
      'orderDate': instance.orderDate,
      'orderStatus': instance.orderStatus,
      'orderItems': instance.orderItems,
      'coupons': instance.coupons,
      'user': instance.user,
    };

_OrderItemReadDto _$OrderItemReadDtoFromJson(Map<String, dynamic> json) =>
    _OrderItemReadDto(
      count: (json['count'] as num).toInt(),
      product: ProductDto.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemReadDtoToJson(_OrderItemReadDto instance) =>
    <String, dynamic>{'count': instance.count, 'product': instance.product};

_UserInOrderReadDto _$UserInOrderReadDtoFromJson(Map<String, dynamic> json) =>
    _UserInOrderReadDto(
      data: UserReadDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserInOrderReadDtoToJson(_UserInOrderReadDto instance) =>
    <String, dynamic>{'data': instance.data};

_UserReadDto _$UserReadDtoFromJson(Map<String, dynamic> json) => _UserReadDto(
  id: (json['id'] as num).toInt(),
  attributes: UserSubReadDto.fromJson(
    json['attributes'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$UserReadDtoToJson(_UserReadDto instance) =>
    <String, dynamic>{'id': instance.id, 'attributes': instance.attributes};

_UserSubReadDto _$UserSubReadDtoFromJson(Map<String, dynamic> json) =>
    _UserSubReadDto(
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

Map<String, dynamic> _$UserSubReadDtoToJson(_UserSubReadDto instance) =>
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
