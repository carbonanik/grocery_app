import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:instant_grrocery_delivery/data_source/api/product_api.dart';
import 'package:instant_grrocery_delivery/model/product.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/pages/home_page.dart';

import 'di/locator.dart';

void main() async {
  // await initHiveForFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  // init();
  setup();
  runApp(const ProviderScope(child: MyApp()));
}

Color backgroundColor = Colors.green.shade50;
Color greenColor = const Color(0xFF87C428);
Color alphaBlack = const Color.fromARGB(228, 0, 0, 0);

const basePhotoUrl =
    "https://test-and-devops-environment.s3.amazonaws.com/photos/";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      getPages: RouteHelper.routes,
      initialRoute: RouteHelper.getInitial(),
    );
  }
}
