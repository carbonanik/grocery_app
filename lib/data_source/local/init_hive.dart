import 'package:hive_flutter/hive_flutter.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/cart/cart_item/cart_item.dart';
import 'package:instant_grrocery_delivery/model/coupon/coupon.dart';
import 'package:instant_grrocery_delivery/model/order/order.dart';
import 'package:instant_grrocery_delivery/model/order/order_item/order_item.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';

Future<void> initHiveDriver() async {
  await Hive.initFlutter();

  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(AuthResponseAdapter());
  Hive.registerAdapter(ProductAdapter());
  Hive.registerAdapter(CartItemAdapter());
  Hive.registerAdapter(OrderItemAdapter());
  Hive.registerAdapter(OrderAdapter());
  Hive.registerAdapter(CouponAdapter());

  await Hive.openLazyBox<bool>(HiveBoxName.boardingBox);
  await Hive.openLazyBox<AuthResponse>(HiveBoxName.authBox);
  await Hive.openLazyBox<CartItem>(HiveBoxName.cartBox);
  await Hive.openLazyBox<Order>(HiveBoxName.orderBox);
  await Hive.openLazyBox<bool>(HiveBoxName.favoriteBox);
}