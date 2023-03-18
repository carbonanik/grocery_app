import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/order_api.dart';
import 'package:instant_grrocery_delivery/data_source/db/orders_hive.dart';
import 'package:instant_grrocery_delivery/model/order.dart';

import 'cart_provider.dart';

// =============================== CartDataModel =======================================

class OrdersDataModel extends ChangeNotifier {
  final Map<int, Order> _orderList = {};

  OrdersDataModel() {
    dataChanged();
  }

  UnmodifiableMapView<int, Order> get orderList =>
      UnmodifiableMapView(_orderList);

  void addOrder(Order order) {
    addOrderHive(order).then((value) => dataChanged());
  }

  void dataChanged() async {
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

final ordersProvider = ChangeNotifierProvider((_) => OrdersDataModel());

final orderByIdProvider =
    FutureProvider.family<Order, int>((ref, orderId) async {
  return getSingleOrderHive(orderId);
});

final orderApiProvider = Provider((ref) => OrderApi());

class ProcessOrderNotifier extends StateNotifier<AsyncValue<Order?>> {
  ProcessOrderNotifier() : super(const AsyncValue.data(null));

  Future<void> processOrder(WidgetRef ref) async {
    state = const AsyncValue.loading();

    try {
      // throw Exception('Simulated Error');
      final order = ref.read(cartListProductsProvider).createOrderFromCart();
      final newOrder =
          await ref.read(orderApiProvider).createOrder(order.toJson());

      ref.read(ordersProvider).addOrder(newOrder);
      ref.read(cartListProductsProvider).clearCart();
      state = await AsyncValue.guard(() async => newOrder);
    } on Exception catch (e) {
      state = AsyncValue.error(e, StackTrace.fromString(e.toString()));
    }
  }
}

final processOrderNotifierProvider =
    StateNotifierProvider<ProcessOrderNotifier, AsyncValue<Order?>>(
  (ref) => ProcessOrderNotifier(),
);
