import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/local/orders_hive.dart';
import 'package:instant_grrocery_delivery/model/order/order.dart';

// =============================== CartDataModel =======================================

class OrdersChangeNotifier extends ChangeNotifier {
  final Map<int, Order> _orderList = {};

  OrdersChangeNotifier() {
    _dataChanged();
  }

  UnmodifiableMapView<int, Order> get orderList =>
      UnmodifiableMapView(_orderList);

  void addOrder(Order order) {
    addOrderHive(order).then((value) => _dataChanged());
  }

  void _dataChanged() async {
    getOrdersHive().then(
      (value) {
        _orderList.clear();
        for (var e in value) {
          _orderList[e.id] = e;
        }
      },
    ).whenComplete(() => notifyListeners());
  }
}

final ordersProvider = ChangeNotifierProvider((_) => OrdersChangeNotifier());

final orderByIdProvider =
    FutureProvider.family<Order, int>((ref, orderId) async {
  return getSingleOrderHive(orderId);
});
