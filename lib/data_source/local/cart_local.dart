
import 'package:instant_grrocery_delivery/model/cart/cart_item/cart_item.dart';

abstract class CartLocal {
  List<CartItem> getCartItems();

  bool addCartItem(CartItem cartItem);

  CartItem? getSingleCartItem(int cartItemId);

  bool removeCartItem(int cartItemId);

  Future<void> clearCartItems();
}
