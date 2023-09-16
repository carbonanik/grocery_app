import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';

import '../../model/cart_item.dart';

Future<List<CartItem>> getCartItems() async {
  Box box1 = await Hive.openBox(HiveBoxName.cartBox);
  return box1.values.map((e) {
    return CartItem.fromJson(jsonDecode(jsonEncode(e)));
  }).toList();
}

Future<bool> addCartItem(CartItem cartItem) async {
  Box box1 = await Hive.openBox(HiveBoxName.cartBox);
  await box1.put(cartItem.id, cartItem.toJson());
  return true;
}

Future<CartItem> getSingleCartItem(int cartItemId) async {
  Box box1 = await Hive.openBox(HiveBoxName.cartBox);
  final cartItem = box1.get(cartItemId);
  return CartItem.fromJson(cartItem);
}

Future<bool> removeCartItem(int cartItemId) async {
  Box box1 = await Hive.openBox(HiveBoxName.cartBox);
  await box1.delete(cartItemId);
  return true;
}

Future<bool> clearCartItems() async {
  Box box1 = await Hive.openBox(HiveBoxName.cartBox);
  await box1.clear();
  return true;
}
