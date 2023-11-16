
import 'package:instant_grrocery_delivery/model/cart/cart_item/cart_item.dart';

abstract class CartLocal {
  Future<List<CartItem>> getCartItems();

  Future<bool> addCartItem(CartItem cartItem);

  Future<CartItem?> getSingleCartItem(int cartItemId);

  Future<bool> removeCartItem(int cartItemId);

  Future<void> clearCartItems();
}
