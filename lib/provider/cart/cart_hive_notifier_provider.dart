import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/order_create.dart';

import '../../data_source/hive/cart_hive.dart';
import '../../model/cart_item.dart';
import '../../model/product.dart';

// =============================== CartDataModel =======================================

class CartChangeNotifier extends ChangeNotifier {
  final Map<int, CartItem> _cartList = {};

  CartChangeNotifier() {
    _dataChanged();
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
    addCartItem(cartItem).then((value) => _dataChanged());
  }

  _remove(cartItemId) {
    removeCartItem(cartItemId).then((value) => _dataChanged());
  }

  void clearCart() {
    clearCartItems().then((value) => _dataChanged());
  }

  void _dataChanged() async {
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

  OrderCreateDto getOrderFromCart() {
    if (_cartList.isEmpty) {
      throw Exception('Cart Empty');
    }

    final newOrder = OrderCreateDto(
        orderItems: _orderItemCreateList(),
        count: cartCount(),
        totalPrice: cartPrice().toString(),
        orderDate: DateTime.now().toIso8601String(),
        coupons: [],
        user: UserInOrderCreateDto(connect: [1]));

    return newOrder;
  }

  List<OrderItemCreateDto> _orderItemCreateList() {
    return _cartList.entries
        .map(
          (e) => OrderItemCreateDto(
            count: e.value.count,
            product: e.value.product,
          ),
        )
        .toList();
  }
}

final cartProvider = ChangeNotifierProvider((_) => CartChangeNotifier());
