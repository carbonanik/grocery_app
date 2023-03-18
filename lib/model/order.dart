// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'coupon.dart';
import 'order_item.dart';

part 'order.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Order {
  final int id;
  final int? userId;
  final List<OrderItem> orderItems;
  final int count;
  final String totalPrice;
  final String orderDate;
  final String orderStatus;
  final List<Coupon> coupons;

  Order({
    required this.id,
    this.userId,
    required this.orderItems,
    required this.count,
    required this.totalPrice,
    required this.orderDate,
    required this.orderStatus,
    required this.coupons,
  });

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  factory Order.fromJson(Map<String, dynamic> source) =>
      _$OrderFromJson(source);
}
