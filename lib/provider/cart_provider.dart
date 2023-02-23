// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/product.dart';

// @HiveType(typeId: 0)
// class HiveCartItem extends HiveObject {
//   HiveCartItem({
//     required this.id,
//     required this.price,
//     required this.name,
//     required this.description,
//     required this.image,
//     required this.weight,
//     required this.count,
//   });

//   @HiveField(0)
//   final int id;

//   @HiveField(1)
//   final double price;

//   @HiveField(2)
//   final String name;

//   @HiveField(3)
//   final String description;

//   @HiveField(4)
//   final String image;

//   @HiveField(5)
//   final String weight;

//   @HiveField(6)
//   final int count;

//   CartItem toCartItem() => CartItem(
//         product: Product(
//           id: id,
//           name: name,
//           price: price,
//           weight: weight,
//           image: image,
//           description: description,
//         ),
//         count: count,
//       );
// }

Future<List<CartItem>> getCartItems() async {
  Box box1 = await Hive.openBox('cart_item');
  return box1.values.map((e) => CartItem.fromJson(e)).toList();
}

// final getCartItemProvider = FutureProvider(
//   (ref) => getCartItems(),
// );

Future<bool> addCartItem(CartItem cartItem) async {
  Box box1 = await Hive.openBox('cart_item');
  await box1.put(cartItem.id, cartItem.toJson());
  return true;
}

// final addCartItemProvider = FutureProvider.family(
//   (ref, CartItem cartItem) => addCartItem(cartItem),
// );

Future<CartItem> getSingleCartItem(int cartItemId) async {
  Box box1 = await Hive.openBox('cart_item');
  final cartItem = box1.get(cartItemId);
  return CartItem.fromJson(cartItem);
}

Future<bool> removeCartItem(int cartItemId) async {
  Box box1 = await Hive.openBox('cart_item');
  await box1.delete(cartItemId);
  print("deleted");
  return true;
}

// final getSingleCartItemProvider = FutureProvider.family(
//   (ref, int cartItemId) => getSingleCartItem(cartItemId),
// );

// =================================== CartItem ===================================

@immutable
class CartItem {
  final int id;
  final Product product;
  final int count;

  CartItem({
    required this.product,
    required this.count,
  }) : id = product.id;

  CartItem updated({required int count}) => CartItem(
        product: product,
        count: count,
      );

  @override
  int get hashCode => id.hashCode;

  @override
  bool operator ==(covariant CartItem other) => product.id == other.product.id;

  @override
  String toString() =>
      'CartItem(id: $id, product: ${product.toString()}, count: $count)';

  // HiveCartItem toHiveCartItem() => HiveCartItem(
  //       id: id,
  //       price: product.price,
  //       name: product.name,
  //       description: product.description,
  //       image: product.image,
  //       weight: product.weight,
  //       count: count,
  //     );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'product': product.toMap(),
      'count': count,
    };
  }

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      // id: map['id'] as int,
      product: Product.fromMap(map['product'] as Map<String, dynamic>),
      count: map['count'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItem.fromJson(String source) =>
      CartItem.fromMap(json.decode(source) as Map<String, dynamic>);
}

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

  _add(cartItem) async {
    addCartItem(cartItem).then((value) => dataChanged());
  }

  _remove(cartItemId) async {
    removeCartItem(cartItemId).then((value) => dataChanged());
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
}

final cartListProductsProvider = ChangeNotifierProvider((_) => CartDataModel());