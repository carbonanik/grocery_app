import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/local/init_hive.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/home/home_page.dart';
import 'package:instant_grrocery_delivery/ui/views/product/product_detail_page.dart';

Future<void> main() async {
  await initHiveDriver();
  runApp(
     ProviderScope(
      child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) {
          return const MyApp();
        }
      ),
    ),
  );
}

const baseImageUrl = "https://test-and-devops-environment.s3.amazonaws.com/photos/";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Grocery Shop',
      theme: ThemeData(
        primarySwatch: swatchColor,
        textTheme: GoogleFonts.dmSansTextTheme(),
      ),
      getPages: RouteHelper.routes,
      initialRoute: RouteHelper.getSplash(),
      // home: const HomePage(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}