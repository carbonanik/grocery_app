import 'dart:convert';
import 'package:hive/hive.dart';

import 'constant/constant.dart';
import '../../model/order/order.dart';

Future<List<Order>> getOrdersHive() async {
  Box box = await Hive.openBox(HiveBoxName.orderBox);
  return box.values
      .map((e) => Order.fromJson(jsonDecode(jsonEncode(e))))
      .toList();
}

Future<bool> addOrderHive(Order order) async {
  Box box1 = await Hive.openBox(HiveBoxName.orderBox);
  await box1.put(order.id, order.toJson());
  return true;
}

Future<Order> getSingleOrderHive(int orderId) async {
  Box box = await Hive.openBox(HiveBoxName.orderBox);
  final Map<String, dynamic> cartItem =
      jsonDecode(jsonEncode(box.get(orderId)));
  return Order.fromJson(cartItem);
}

Future<bool> removeOrderHive(int orderId) async {
  Box box = await Hive.openBox(HiveBoxName.orderBox);
  await box.delete(orderId);
  return true;
}
