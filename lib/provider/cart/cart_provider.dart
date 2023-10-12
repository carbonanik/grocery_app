import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/local/cart_local.dart';
import 'package:instant_grrocery_delivery/data_source/local/impl/cart_local_impl.dart';
import 'package:instant_grrocery_delivery/model/cart/cart_item/cart_item.dart';
import 'package:instant_grrocery_delivery/model/order/dtos/order_create.dart';
import 'package:instant_grrocery_delivery/model/order/order_item/order_item.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_controller_provider.dart';

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

  UnmodifiableMapView<int, CartItem> get cartList => UnmodifiableMapView(_cartList);

  void itemIncrement(Product product) {
    final prevCount = _cartList[product.id]?.count ?? 0;
    final newCartItem = CartItem(
      id: product.id,
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
        id: product.id,
        product: product,
        count: prevCount - 1,
      );
      _add(newCartItem);
    } else {
      _remove(product.id);
    }
  }

  void itemRemove(Product product) {
    _remove(product.id);
  }

  _add(cartItem) {
    ref.read(cartLocalProvider).addCartItem(cartItem);
    _dataChanged();
  }

  _remove(cartItemId) {
    ref.read(cartLocalProvider).removeCartItem(cartItemId);
    _dataChanged();
  }

  Future<void> clearCart() async {
    await ref.read(cartLocalProvider).clearCartItems();
    _dataChanged();
  }

  void _dataChanged() {
    _cartList.clear();
    final d = ref.read(cartLocalProvider).getCartItems();
    for (var e in d) {
      _cartList[e.product.id] = e;
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
      (previousValue, element) => (element.value.count * element.value.product.price) + previousValue,
    );
  }

  OrderCreate? getOrderFromCart() {
    if (_cartList.isEmpty) {
      throw Exception('Cart Empty');
    }

    final authUser = ref.read(authControllerProvider);

    return authUser.whenOrNull(
      data: (value) => OrderCreate(
        orderItems: _orderItems(),
        count: cartCount(),
        totalPrice: cartPrice().toString(),
        orderDate: DateTime.now().toIso8601String(),
        coupons: [],
        userId: value.user.id,
      ),
    );
  }

  List<OrderItem> _orderItems() {
    return _cartList.values
        .map(
          (e) => OrderItem(
            product: e.product,
            count: e.count,
          ),
        )
        .toList();
  }
}

final cartProvider = ChangeNotifierProvider((ref) => CartChangeNotifier(ref));
