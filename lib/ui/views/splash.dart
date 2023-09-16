import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/local/auth_hive.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/provider/auth/login_controller_provider.dart';

import '../../route/route_helper.dart';

class Splash extends ConsumerWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.listen<AsyncValue<void>>(
    //   loginControllerProvider,
    //   (_, state) {
    //     state.when(
    //       data: (value) => Get.toNamed(RouteHelper.getHomeTab()),
    //       error: (error, stackTrace) => Get.toNamed(RouteHelper.getLogin()),
    //       loading: () => null,
    //     );
    //   },
    // );

    Future.delayed(const Duration(seconds: 1), () async {
      ref.read(loginNotifierProvider.notifier).isPreviouslyLoggedIn();
      print("================================================");
      final user = await getAuthUserHive();
      if (user != null) {
        Get.offAllNamed(RouteHelper.getHomeTab());
      } else {
        Get.offAllNamed(RouteHelper.getLogin());
      }

    });
    return Scaffold(
      backgroundColor: backgroundColor,
      body: const Center(
        child: Text(
          "Splash",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
