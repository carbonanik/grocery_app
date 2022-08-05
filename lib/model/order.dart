import 'package:instant_grrocery_delivery/model/order_item.dart';

import 'coupon.dart';

class Order {
  final int id;
  final int userId;
  final List<OrderItem> orderItems;
  final int count;
  final double totalPrice;
  final String orderDate;
  final String orderStatus;
  final List<Coupon> coupon;

  Order({
    required this.id,
    required this.userId,
    required this.orderStatus,
    required this.orderDate,
    required this.orderItems,
    required this.count,
    required this.totalPrice,
    required this.coupon
  });

  static Order fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      userId: json['user_id'],
      orderStatus: json['order_status'],
      orderDate: json['order_date'],
      orderItems: (json['order_items'] as List<dynamic>).map((e) => OrderItem.fromJson(e)).toList(),
      count: json['count'],
      totalPrice: json['total_price'].toDouble(),
      coupon: (json['coupon'] as List<dynamic>).map((e) => Coupon.fromJson(e)).toList()
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['order_status'] = orderStatus;
    data['order_date'] = orderDate;
    data['order_items'] = orderItems.map((e) => e.toJson()).toList();
    data['count'] = count;
    data['total_price'] = totalPrice;
    data['coupon'] = coupon.map((e) => e.toJson()).toList();
    return data;
  }
}
