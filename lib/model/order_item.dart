// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'product.dart';

part 'order_item.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
@immutable
class OrderItem {
  final int id;
  final int orderId;
  final Product product;
  final int count;

  const OrderItem({
    required this.id,
    required this.orderId,
    required this.product,
    required this.count,
  });

  Map<String, dynamic> toJson() => _$OrderItemToJson(this);

  factory OrderItem.fromJson(Map<String, dynamic> source) =>
      _$OrderItemFromJson(source);
}
