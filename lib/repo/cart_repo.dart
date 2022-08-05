import 'dart:convert';
import 'package:instant_grrocery_delivery/model/cart_item.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartRepo{
  final SharedPreferences sharedPreferences;
  final CART_KEY = "cart";

  CartRepo({required this.sharedPreferences}){
    cart = sharedPreferences.getStringList(CART_KEY) ?? [];
  }

  /// current cart list // before checkout
  List<String> cart=[];

  /// store cart list to shared preference
  void addToItemToCart(CartItem item){
    cart.add(jsonEncode(item.toJson()));
    sharedPreferences.setStringList(CART_KEY, cart);
  }

  /// get cart list from shared preference
  List<CartItem> getCartList(){
    List<CartItem> cartList = [];
    for (var item in cart) {
      cartList.add(CartItem.fromJson(jsonDecode(item)));
    }
    return cartList;
  }
}