import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instant_grrocery_delivery/data_source/local/init_hive.dart';
import 'package:instant_grrocery_delivery/route/app_router.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';

Future<void> main() async {
  await initHiveDriver();
  runApp(
    ProviderScope(
      child: DevicePreview(
        isToolbarVisible: false,
        backgroundColor: Colors.grey[900],
        defaultDevice: Devices.android.mediumPhone,
        enabled: false,
        builder: (context) {
          return MyApp();
        },
      ),
    ),
  );
}

const baseImageUrl = "https://test-and-devops-environment.s3.amazonaws.com/photos/";

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
      routerConfig: _router.config(),
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
