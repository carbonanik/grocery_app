import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/provider/boarding_provider.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';

class OnBoarding extends ConsumerWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          children: [
            const Text(
              "On Boarding",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () async {
                ref.read(putPreviouslyBoardedProvider(true));
                Get.toNamed(RouteHelper.getSignUp());
              },
              child: const Text("Sign Up"),
            ),
            TextButton(
              onPressed: () async {
                ref.read(putPreviouslyBoardedProvider(true));
                Get.toNamed(RouteHelper.getHomeTab());
              },
              child: const Text("Start Without Sign Up"),
            )
          ],
        ),
      ),
    );
  }
}
