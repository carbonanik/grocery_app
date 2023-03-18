import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/model/order.dart';
import 'package:instant_grrocery_delivery/model/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_item.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
@immutable
class CartItem {
  final int id;
  final Product product;
  final int count;

  CartItem({
    required this.product,
    required this.count,
  }) : id = product.id;

  CartItem updatedCount({required int count}) => CartItem(
        product: product,
        count: count,
      );

  @override
  int get hashCode => id.hashCode;

  @override
  bool operator ==(covariant CartItem other) => product.id == other.product.id;

  Map<String, dynamic> toJson() => _$CartItemToJson(this);

  factory CartItem.fromJson(Map<String, dynamic> source) =>
      _$CartItemFromJson(source);
}
