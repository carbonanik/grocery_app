import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/gen/fonts.gen.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/provider/boarding_provider.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';

import 'on_boarding.dart';

class Splash extends ConsumerStatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashState();
}

class _SplashState extends ConsumerState<Splash> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    final previouslyBoarded = await ref.read(previouslyBoardedProvider.future);
    await Future.delayed(1.seconds);
    Get.offAndToNamed(
      previouslyBoarded
          ? RouteHelper.getHomeTab()
          : RouteHelper.getOnBoarding(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          "Splash",
          style: TextStyle(
            color: accentColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: FontFamily.roboto
          ),
        ),
      ),
    );
  }
}
