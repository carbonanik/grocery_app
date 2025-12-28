import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:instant_grrocery_delivery/features/coupon/data/model/coupon.dart';

import 'cart_item/cart_item.dart';

part 'cart.g.dart';
part 'cart.freezed.dart';

@freezed
abstract class Cart with _$Cart {
  const factory Cart({
    int? id,
    required bool isActive,
    required int totalQuantity,
    required List<CartItem>? cartItems,
    required int count,
    required String totalPrice,
    required String firstItemDate,
    required String lastItemDate,
    List<Coupon>? coupon,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> source) => _$CartFromJson(source);
}
