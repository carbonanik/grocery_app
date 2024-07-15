// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      id: (json['id'] as num?)?.toInt(),
      isActive: json['isActive'] as bool,
      totalQuantity: (json['totalQuantity'] as num).toInt(),
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
      totalPrice: json['totalPrice'] as String,
      firstItemDate: json['firstItemDate'] as String,
      lastItemDate: json['lastItemDate'] as String,
      coupon: (json['coupon'] as List<dynamic>?)
          ?.map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'totalQuantity': instance.totalQuantity,
      'cartItems': instance.cartItems,
      'count': instance.count,
      'totalPrice': instance.totalPrice,
      'firstItemDate': instance.firstItemDate,
      'lastItemDate': instance.lastItemDate,
      'coupon': instance.coupon,
    };
