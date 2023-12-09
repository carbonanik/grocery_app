import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/local/init_hive.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';

Future<void> main() async {
  await initHiveDriver();
  runApp(const ProviderScope(child: MyApp()));
}

const baseImageUrl = "https://test-and-devops-environment.s3.amazonaws.com/photos/";

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
      getPages: RouteHelper.routes,
      initialRoute: RouteHelper.getSplash(),
    );
  }
}
