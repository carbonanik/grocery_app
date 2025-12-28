import 'package:flutter/foundation.dart' show immutable;

@immutable
class HiveBoxName {
  static String orderBox = 'orders';
  static String favoriteBox = 'favorite_item';
  static String cartBox = 'cart_item';
  static String authBox = 'auth_box';
  static String boardingBox = 'boarding_box';
}

const int authResponseHiveTypeId = 1;
const int userHiveTypeId = 2;
const int cartItemHiveTypeId = 3;
const int orderHiveTypeId = 4;
const int couponHiveTypeId = 5;
const int orderItemHiveTypeId = 6;
const int productHiveTypeId = 7;

const String authResponseAdapterName = 'AuthResponseAdapter';
const String userAdapterName = 'UserAdapter';
const String cartItemAdapterName = 'CartItemAdapter';
const String orderAdapterName = 'OrderAdapter';
const String couponAdapterName = 'CouponAdapter';
const String orderItemAdapterName = 'OrderItemAdapter';
const String productAdapterName = 'ProductAdapter';


