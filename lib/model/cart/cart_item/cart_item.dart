import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';

part 'cart_item.g.dart';
part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {

  const factory CartItem({
    required int id,
    required Product product,
    required int count,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> source) => _$CartItemFromJson(source);
}
