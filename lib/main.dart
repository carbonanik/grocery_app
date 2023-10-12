import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/cart/cart_item/cart_item.dart';
import 'package:instant_grrocery_delivery/model/coupon/coupon.dart';
import 'package:instant_grrocery_delivery/model/order/order.dart';
import 'package:instant_grrocery_delivery/model/order/order_item/order_item.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';

Future<void> initHiveDriver() async {
  await Hive.initFlutter();

  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(AuthResponseAdapter());
  Hive.registerAdapter(ProductAdapter());
  Hive.registerAdapter(CartItemAdapter());
  Hive.registerAdapter(OrderItemAdapter());
  Hive.registerAdapter(OrderAdapter());
  Hive.registerAdapter(CouponAdapter());

  await Hive.openBox<bool>(HiveBoxName.boardingBox);
  await Hive.openBox<AuthResponse>(HiveBoxName.authBox);
  await Hive.openBox<CartItem>(HiveBoxName.cartBox);
  await Hive.openBox<Order>(HiveBoxName.orderBox);
  await Hive.openBox<bool>(HiveBoxName.favoriteBox);
}

Future<void> main() async {
  await initHiveDriver();
  runApp(const ProviderScope(child: MyApp()));
}

const baseImageUrl =
    "https://test-and-devops-environment.s3.amazonaws.com/photos/";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: swatchColor,
        textTheme: GoogleFonts.dmSansTextTheme(),
      ),
      // home: ExampleFontSelection(),
      getPages: RouteHelper.routes,
      initialRoute: RouteHelper.getSplash(),
    );
  }
}