import 'package:instant_grrocery_delivery/model/coupon/coupon.dart';
import 'package:instant_grrocery_delivery/model/order/order_item/order_item.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';

part 'order.g.dart';

@freezed
class Order with _$Order {
  const factory Order({
    required int id,
    int? userId,
    required List<OrderItem> orderItems,
    required int count,
    required String totalPrice,
    required String orderDate,
    required String orderStatus,
    required List<Coupon> coupons,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}