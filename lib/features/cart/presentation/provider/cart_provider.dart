import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
// import 'package:get/get_utils/get_utils.dart';
import 'package:instant_grrocery_delivery/features/cart/data/source/cart_local.dart';
import 'package:instant_grrocery_delivery/features/cart/data/source/cart_local_impl.dart';
import 'package:instant_grrocery_delivery/features/cart/data/model/cart_item/cart_item.dart';
import 'package:instant_grrocery_delivery/features/order/data/model/dtos/order_create.dart';
import 'package:instant_grrocery_delivery/features/order/data/model/order_item/order_item.dart';
import 'package:instant_grrocery_delivery/features/product/data/model/product.dart';
import 'package:instant_grrocery_delivery/core/result_value.dart';
import 'package:instant_grrocery_delivery/features/auth/presentation/provider/auth_controller_provider.dart';
import 'package:instant_grrocery_delivery/features/order/presentation/provider/process_order_provider.dart';

final cartLocalProvider = Provider<CartLocal>((ref) {
  return CartLocalImpl();
});

// =============================== CartDataModel =======================================

class CartChangeNotifier extends ChangeNotifier {
  final Map<int, CartItem> _cartList = {};
  final Ref ref;

  CartChangeNotifier(this.ref) {
    _dataChanged();
  }

  UnmodifiableMapView<int, CartItem> get cartList =>
      UnmodifiableMapView(_cartList);

  Future<void> itemIncrement(Product product) async {
    final prevCount = _cartList[product.id]?.count ?? 0;
    final newCartItem = CartItem(
      id: product.id,
      product: product,
      count: prevCount + 1,
    );
    await _add(newCartItem);
  }

  Future<void> itemDecrement(Product product) async {
    final prevCount = _cartList[product.id]?.count;
    if (prevCount == null) return;

    if (prevCount > 1) {
      final newCartItem = CartItem(
        id: product.id,
        product: product,
        count: prevCount - 1,
      );
      await _add(newCartItem);
    } else {
      await _remove(product.id);
    }
  }

  Future<void> itemRemove(Product product) async {
    await _remove(product.id);
  }

  Future<void> _add(CartItem cartItem) async {
    await ref.read(cartLocalProvider).addCartItem(cartItem);
    final a = ref.read(processOrderControllerProvider);
    if (a.isData) {
      ref.read(processOrderControllerProvider.notifier).clear();
    }
    await _dataChanged();
  }

  Future<void> _remove(cartItemId) async {
    await ref.read(cartLocalProvider).removeCartItem(cartItemId);
    await _dataChanged();
  }

  Future<void> clearCart() async {
    await ref.read(cartLocalProvider).clearCartItems();
    await _dataChanged();
  }

  Future<void> _dataChanged() async {
    _cartList.clear();
    final cartItems = await ref.read(cartLocalProvider).getCartItems();
    for (var item in cartItems) {
      _cartList[item.product.id] = item;
    }
    notifyListeners();
  }

  int itemCount(int productId) {
    return _cartList[productId]?.count ?? 0;
  }

  double itemPrice(productId) {
    return _cartList[productId]?.product.price ?? 0;
  }

  int cartCount() {
    return _cartList.entries.fold<int>(
      0,
      (previousValue, element) => element.value.count + previousValue,
    );
  }

  double cartPrice() {
    return _cartList.entries.fold<double>(
      0,
      (previousValue, element) =>
          (element.value.count * element.value.product.price) + previousValue,
    );
  }

  OrderCreate? getOrderFromCart() {
    if (_cartList.isEmpty) {
      throw Exception('Cart Empty');
    }

    final authUser = ref.read(authControllerProvider);

    return null;
    // return authUser.whenOrNull(
    //   data: (value) => OrderCreate(
    //     orderItems: _orderItems(),
    //     count: cartCount(),
    //     totalPrice: cartPrice().toString(),
    //     orderDate: DateTime.now().toIso8601String(),
    //     coupons: [],
    //     userId: value.id,
    //   ),
    // );
  }

  List<OrderItem> _orderItems() {
    return _cartList.values
        .map((e) => OrderItem(product: e.product, count: e.count))
        .toList();
  }
}

final cartProvider = ChangeNotifierProvider((ref) => CartChangeNotifier(ref));
