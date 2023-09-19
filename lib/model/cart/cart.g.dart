// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cart _$$_CartFromJson(Map<String, dynamic> json) => _$_Cart(
      id: json['id'] as int?,
      isActive: json['isActive'] as bool,
      totalQuantity: json['totalQuantity'] as int,
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int,
      totalPrice: json['totalPrice'] as String,
      firstItemDate: json['firstItemDate'] as String,
      lastItemDate: json['lastItemDate'] as String,
      coupon: (json['coupon'] as List<dynamic>?)
          ?.map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CartToJson(_$_Cart instance) => <String, dynamic>{
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
