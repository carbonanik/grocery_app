import 'package:hive/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/cart_local.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';
import 'package:instant_grrocery_delivery/model/cart/cart_item/cart_item.dart';

class CartLocalImpl extends CartLocal {
  @override
  List<CartItem> getCartItems() {
    final box = Hive.box<CartItem>(HiveBoxName.cartBox);
    return box.values.toList();
    // box.values.map((e) {
    // return CartItem.fromJson(jsonDecode((e)));
    // }).toList();
  }

  @override
  bool addCartItem(CartItem cartItem) {
    final box = Hive.box<CartItem>(HiveBoxName.cartBox);
    box.put(cartItem.id, cartItem);
    return true;
  }

  @override
  CartItem? getSingleCartItem(int cartItemId) {
    final box = Hive.box<CartItem>(HiveBoxName.cartBox);
    final cartItem = box.get(cartItemId);
    return cartItem;
  }

  @override
  bool removeCartItem(int cartItemId) {
    final box = Hive.box<CartItem>(HiveBoxName.cartBox);
    box.delete(cartItemId);
    return true;
  }

  @override
  Future<void> clearCartItems() async {
    final box = Hive.box<CartItem>(HiveBoxName.cartBox);
    await box.clear();

  }
}
