import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/views/auth/sign_in.dart';
import 'package:instant_grrocery_delivery/ui/views/auth/sign_up.dart';
import 'package:instant_grrocery_delivery/ui/views/auth/verification.dart';
import 'package:instant_grrocery_delivery/ui/views/cart/payment_method.dart';
import 'package:instant_grrocery_delivery/ui/views/cart/wallet.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/main_tabs.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/home/home_page.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/shop/create_shop.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/faq.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/support.dart';
import 'package:instant_grrocery_delivery/ui/views/on_boarding.dart';
import 'package:instant_grrocery_delivery/ui/views/profile/profile.dart';
import 'package:instant_grrocery_delivery/ui/views/profile/profile_edti.dart';
import 'package:instant_grrocery_delivery/ui/views/splash.dart';
import 'package:instant_grrocery_delivery/ui/views/your_location/your_location.dart';
import 'package:instant_grrocery_delivery/ui/widget/transactions.dart';

Future<void> initHiveDriver() async {
  await Hive.initFlutter();
  await Hive.openBox('cart_item');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // setup();
  await initHiveDriver();
  runApp(const ProviderScope(child: MyApp()));
}

const Color backgroundColor = Color(0xFFE8F5E9);
const Color accentColor = Color(0xFF87C428);
const Color foregroundColor = Color(0xE2000000);

const baseImageUrl =
    "https://test-and-devops-environment.s3.amazonaws.com/photos/";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      // home: SignIn(),
      getPages: RouteHelper.routes,
      initialRoute: RouteHelper.getSplash(),
    );
  }
}
