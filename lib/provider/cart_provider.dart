import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/order_create.dart';

import '../data_source/db/cart_hive.dart';
import '../model/cart_item.dart';
import '../model/product.dart';

// =============================== CartDataModel =======================================

class CartDataModel extends ChangeNotifier {
  final Map<int, CartItem> _cartList = {};

  CartDataModel() {
    dataChanged();
  }

  UnmodifiableMapView<int, CartItem> get cartList =>
      UnmodifiableMapView(_cartList);

  void itemIncrement(Product product) {
    final prevCount = _cartList[product.id]?.count ?? 0;
    final newCartItem = CartItem(
      product: product,
      count: prevCount + 1,
    );
    _add(newCartItem);
  }

  void itemDecrement(Product product) {
    final prevCount = _cartList[product.id]?.count;

    if (prevCount == null) return;
    if (prevCount > 1) {
      final newCartItem = CartItem(
        product: product,
        count: prevCount - 1,
      );
      _add(newCartItem);
    } else {
      _remove(product.id);
    }
  }

  _add(cartItem) {
    addCartItem(cartItem).then((value) => dataChanged());
  }

  _remove(cartItemId) {
    removeCartItem(cartItemId).then((value) => dataChanged());
  }

  void clearCart() {
    clearCartItems().then((value) => dataChanged());
  }

  void dataChanged() async {
    getCartItems().then(
      (value) {
        _cartList.clear();
        for (var e in value) {
          _cartList[e.product.id] = e;
        }
      },
    ).whenComplete(() => notifyListeners());
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

  OrderCreate createOrderFromCart() {
    print(_cartList);
    if (_cartList.isEmpty) {
      throw Exception('Cart Empty');
    }

    final newOrder = OrderCreate(
      // id: orderId,
      userId: 0,
      orderItems: _cartList.entries
          .map((e) => _createOrderItem(e.value.count, e.value.product.id))
          .toList(),
      count: cartCount(),
      totalPrice: cartPrice().toString(),
      orderDate: DateTime.now().toIso8601String(),
      orderStatus: "PROCESSING",
      coupons: [],
    );

    return newOrder;
  }

  OrderItemCreate _createOrderItem(int count, int productId) {
    return OrderItemCreate(
        // id: cartItem.id,
        // orderId: orderId,
        // product: cartItem.product,
        count: count,
        productId: productId);
  }
}

final cartListProductsProvider = ChangeNotifierProvider((_) => CartDataModel());
