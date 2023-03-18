import 'package:json_annotation/json_annotation.dart';

import 'cart_item.dart';
import 'coupon.dart';

part 'cart.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Cart {
  final int? id;
  final bool isActive;
  final int totalQuantity;
  final List<CartItem>? cartItems;
  final int count;
  final String totalPrice;
  final String firstItemDate;
  final String lastItemDate;
  final List<Coupon>? coupon;

  Cart({
    this.id,
    required this.isActive,
    required this.totalQuantity,
    required this.totalPrice,
    required this.count,
    required this.firstItemDate,
    required this.lastItemDate,
    this.cartItems,
    this.coupon,
  });

  Map<String, dynamic> toJson() => _$CartToJson(this);

  factory Cart.fromJson(Map<String, dynamic> source) => _$CartFromJson(source);

  // static const String id = 'id';
  // static const String isActive = 'is_active';
  // static const String totalQuantity = 'total_quantity';
  // static const String totalPrice = 'total_price';
  // static const String count = 'count';
  // static const String firstItemDate = 'first_item_date';
  // static const String lastItemDate = 'last_item_date';
}
