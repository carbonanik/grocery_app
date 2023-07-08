// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderReadDto _$OrderReadDtoFromJson(Map<String, dynamic> json) => OrderReadDto(
      id: json['id'] as int,
      attributes:
          OrderSubReadDto.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderReadDtoToJson(OrderReadDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.toJson(),
    };

OrderSubReadDto _$OrderSubReadDtoFromJson(Map<String, dynamic> json) =>
    OrderSubReadDto(
      count: json['count'] as int?,
      totalPrice: json['totalPrice'] as String?,
      orderDate: json['orderDate'] as String?,
      orderStatus: json['orderStatus'] as String?,
      orderItems: (json['orderItems'] as List<dynamic>?)
          ?.map((e) => OrderItemReadDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      coupons: (json['coupons'] as List<dynamic>?)
          ?.map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : UserInOrderReadDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderSubReadDtoToJson(OrderSubReadDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'totalPrice': instance.totalPrice,
      'orderDate': instance.orderDate,
      'orderStatus': instance.orderStatus,
      'orderItems': instance.orderItems?.map((e) => e.toJson()).toList(),
      'coupons': instance.coupons?.map((e) => e.toJson()).toList(),
      'user': instance.user?.toJson(),
    };

OrderItemReadDto _$OrderItemReadDtoFromJson(Map<String, dynamic> json) =>
    OrderItemReadDto(
      count: json['count'] as int,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemReadDtoToJson(OrderItemReadDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'product': instance.product.toJson(),
    };

UserInOrderReadDto _$UserInOrderReadDtoFromJson(Map<String, dynamic> json) =>
    UserInOrderReadDto(
      data: UserReadDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserInOrderReadDtoToJson(UserInOrderReadDto instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

UserReadDto _$UserReadDtoFromJson(Map<String, dynamic> json) => UserReadDto(
      id: json['id'] as int,
      attributes:
          UserSubReadDto.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserReadDtoToJson(UserReadDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.toJson(),
    };

UserSubReadDto _$UserSubReadDtoFromJson(Map<String, dynamic> json) =>
    UserSubReadDto(
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

Map<String, dynamic> _$UserSubReadDtoToJson(UserSubReadDto instance) =>
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
