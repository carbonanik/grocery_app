import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';

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

Color backgroundColor = Colors.green.shade50;
Color greenColor = const Color(0xFF87C428);
Color alphaBlack = const Color(0xE2000000);

const baseImageUrl =
    "https://test-and-devops-environment.s3.amazonaws.com/photos/";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: OrderDetailsPage(orderId: 1),
      getPages: RouteHelper.routes,
      initialRoute: RouteHelper.getInitial(),
    );
  }
}
