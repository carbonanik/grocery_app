import 'dart:convert';

import 'package:hive/hive.dart';

import '../../model/order.dart';

const String boxName = 'orders';

Future<List<Order>> getOrdersHive() async {
  Box box1 = await Hive.openBox(boxName);
  print(box1.values);
  return box1.values
      .map((e) => Order.fromJson(jsonDecode(jsonEncode(e))))
      .toList();
}

Future<bool> addOrderHive(Order order) async {
  Box box1 = await Hive.openBox(boxName);
  await box1.put(order.id, order.toJson());
  return true;
}

Future<Order> getSingleOrderHive(int orderId) async {
  Box box1 = await Hive.openBox(boxName);
  final cartItem = box1.get(orderId);
  return Order.fromJson(cartItem);
}

Future<bool> removeOrderHive(int orderId) async {
  Box box1 = await Hive.openBox(boxName);
  await box1.delete(orderId);
  return true;
}
