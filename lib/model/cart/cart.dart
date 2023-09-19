import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'cart_item/cart_item.dart';
import '../coupon/coupon.dart';

part 'cart.g.dart';
part 'cart.freezed.dart';

@freezed
class Cart with _$Cart {

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
