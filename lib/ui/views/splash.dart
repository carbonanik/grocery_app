import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/provider/boarding_provider.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';

class Splash extends ConsumerWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final previouslyBoarded = ref.watch(previouslyBoardedProvider);
    print(previouslyBoarded);
    previouslyBoarded.map(
      data: (value) {
        print(value);
        Timer(1000.milliseconds, () {
          Get.toNamed(
            value.value ? RouteHelper.getHomeTab() : RouteHelper.getOnBoarding(),
          );
        });
      },
      error: (error) {
        print(error);

      },
      loading: (loading) {
        print(loading);
      },
    );

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
