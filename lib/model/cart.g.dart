// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cart _$CartFromJson(Map<String, dynamic> json) => Cart(
      id: json['id'] as int?,
      isActive: json['is_active'] as bool,
      totalQuantity: json['total_quantity'] as int,
      totalPrice: json['total_price'] as String,
      count: json['count'] as int,
      firstItemDate: json['first_item_date'] as String,
      lastItemDate: json['last_item_date'] as String,
      cartItems: (json['cart_items'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      coupon: (json['coupon'] as List<dynamic>?)
          ?.map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'total_quantity': instance.totalQuantity,
      'cart_items': instance.cartItems?.map((e) => e.toJson()).toList(),
      'count': instance.count,
      'total_price': instance.totalPrice,
      'first_item_date': instance.firstItemDate,
      'last_item_date': instance.lastItemDate,
      'coupon': instance.coupon?.map((e) => e.toJson()).toList(),
    };
