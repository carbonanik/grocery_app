import 'package:hive_ce_flutter/adapters.dart';
import 'package:instant_grrocery_delivery/core/api/local_constants.dart';
import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';
import 'package:instant_grrocery_delivery/features/cart/data/model/cart_item/cart_item.dart';
import 'package:instant_grrocery_delivery/features/coupon/data/model/coupon.dart';
import 'package:instant_grrocery_delivery/features/order/data/model/order.dart';
import 'package:instant_grrocery_delivery/features/order/data/model/order_item/order_item.dart';
import 'package:instant_grrocery_delivery/features/product/data/model/product.dart';
import 'package:instant_grrocery_delivery/features/profile/data/model/user.dart';

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

