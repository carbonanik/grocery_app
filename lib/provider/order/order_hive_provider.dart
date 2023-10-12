import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/local/impl/order_local_impl.dart';
import 'package:instant_grrocery_delivery/data_source/local/orders_local.dart';
import 'package:instant_grrocery_delivery/model/order/order.dart';

final orderLocalProvider = Provider<OrderLocal>((ref) => OrderLocalImpl());

// =============================== CartDataModel =======================================

class OrdersChangeNotifier extends ChangeNotifier {
  final Map<int, Order> _orderList = {};

  OrdersChangeNotifier(this.ref) {
    _dataChanged();
  }

  Ref ref;

  UnmodifiableMapView<int, Order> get orderList => UnmodifiableMapView(_orderList);

  void addOrder(Order order) {
    ref.read(orderLocalProvider).addOrder(order);
    _dataChanged();
  }

  void _dataChanged() async {
    _orderList.clear();
    final d = ref.read(orderLocalProvider).getOrders();
    for (var e in d) {
      _orderList[e.id] = e;
    }
    notifyListeners();
  }
}

final ordersListProvider = ChangeNotifierProvider((ref) => OrdersChangeNotifier(ref));

final orderByIdProvider = FutureProvider.family<Order?, int>((ref, orderId) async {
  return ref.read(orderLocalProvider).getSingleOrder(orderId);
});
