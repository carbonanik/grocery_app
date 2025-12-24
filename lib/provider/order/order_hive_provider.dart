import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:instant_grrocery_delivery/data_source/local/impl/order_local_impl.dart';
import 'package:instant_grrocery_delivery/data_source/local/orders_local.dart';
import 'package:instant_grrocery_delivery/model/order/order.dart';
import 'package:instant_grrocery_delivery/util/extension/log.dart';

final orderLocalProvider = Provider<OrderLocal>((ref) => OrderLocalImpl());

// =============================== CartDataModel =======================================

class OrdersChangeNotifier extends ChangeNotifier {
  final Map<int, Order> _orderList = {};

  OrdersChangeNotifier(this.ref) {
    init();
  }

  Ref ref;

  UnmodifiableMapView<int, Order> get orderList => UnmodifiableMapView(_orderList);

  void init() async {
    await _dataChanged();
  }

  Future<void> addOrder(Order order) async {
    await ref.read(orderLocalProvider).addOrder(order);
    await _dataChanged();
    orderList.length.log();
  }

  Future<void> _dataChanged() async {
    _orderList.clear();
    final orders = await ref.read(orderLocalProvider).getOrders();
    for (var item in orders) {
      _orderList[item.id] = item;
    }
    _orderList.log();
    notifyListeners();
  }
}

final ordersListProvider = ChangeNotifierProvider((ref) => OrdersChangeNotifier(ref));

final orderByIdProvider = FutureProvider.family<Order?, int>((ref, orderId) async {
  return await ref.read(orderLocalProvider).getSingleOrder(orderId);
});
