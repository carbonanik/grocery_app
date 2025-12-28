import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:instant_grrocery_delivery/core/theme/colors.dart';
import 'package:instant_grrocery_delivery/core/util/dimension.dart';
import 'package:instant_grrocery_delivery/gen/assets.gen.dart';
import 'package:supercharged/supercharged.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashState();
}

class _SplashState extends ConsumerState<SplashPage> {
  // late Future googleFontsPending;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    // final previouslyBoarded = await ref.read(previouslyBoardedProvider.future);
    // googleFontsPending = GoogleFonts.pendingFonts([
    //   GoogleFonts.dmSans(),
    // GoogleFonts.poppins(),
    // GoogleFonts.montserrat(fontStyle: FontStyle.italic),
    // ]);

    // Timer(1.seconds, () {
    // Get.offAndToNamed(
    //   previouslyBoarded ? RouteHelper.getHomeTab() : RouteHelper.getOnBoarding(),
    // );
    // AutoRouter.of(context).push(previouslyBoarded ? const MainTabsRoute() : const OnBoardingRoute());
    // });

    Timer(1.seconds, () {
      context.go('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        // child: Text(
        //   "Splash",
        //   style:
        //       TextStyle(color: accentColor, fontSize: 30, fontWeight: FontWeight.bold),
        // ),
        child: Padding(
          padding: EdgeInsets.all(context.w(80)),
          child: Assets.images.logo.image(),
        ),
      ),
    );
  }
}
