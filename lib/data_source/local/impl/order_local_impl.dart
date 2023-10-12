import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';
import 'package:instant_grrocery_delivery/data_source/local/orders_local.dart';
import 'package:instant_grrocery_delivery/model/order/order.dart';

class OrderLocalImpl implements OrderLocal {
  @override
  List<Order> getOrders() {
    final box = Hive.box<Order>(HiveBoxName.orderBox);
    return box.values.toList();
  }

  @override
  bool addOrder(Order order)  {
    final box = Hive.box<Order>(HiveBoxName.orderBox);
    box.put(order.id, order);
    return true;
  }

  @override
  Order? getSingleOrder(int orderId) {
    final box = Hive.box<Order>(HiveBoxName.orderBox);
    // final Map<String, dynamic> cartItem = ;
    return box.get(orderId);
  }

  @override
  bool removeOrder(int orderId)  {
    final box = Hive.box<Order>(HiveBoxName.orderBox);
    box.delete(orderId);
    return true;
  }
}
