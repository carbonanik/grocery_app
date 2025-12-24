import 'package:hive_ce/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/cart_local.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';
import 'package:instant_grrocery_delivery/model/cart/cart_item/cart_item.dart';

class CartLocalImpl extends CartLocal {
  @override
  Future<List<CartItem>> getCartItems() async {
    final box = Hive.lazyBox<CartItem>(HiveBoxName.cartBox);
    Iterable<Future<CartItem?>> listOfFuture = box.keys.map((e) => box.get(e));
    final cartList = await Future.wait(listOfFuture);
    return cartList.whereType<CartItem>().toList();
  }

  @override
  Future<bool> addCartItem(CartItem cartItem) async {
    final box = Hive.lazyBox<CartItem>(HiveBoxName.cartBox);
    await box.put(cartItem.id, cartItem);
    return true;
  }

  @override
  Future<CartItem?> getSingleCartItem(int cartItemId) async {
    final box = Hive.lazyBox<CartItem>(HiveBoxName.cartBox);
    final cartItem = await box.get(cartItemId);
    return cartItem;
  }

  @override
  Future<bool> removeCartItem(int cartItemId) async {
    final box = Hive.lazyBox<CartItem>(HiveBoxName.cartBox);
    await box.delete(cartItemId);
    return true;
  }

  @override
  Future<void> clearCartItems() async {
    final box = Hive.lazyBox<CartItem>(HiveBoxName.cartBox);
    await box.clear();
  }
}
