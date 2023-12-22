import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/provider/boarding_provider.dart';
import 'package:instant_grrocery_delivery/route/app_router.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';
import 'package:supercharged/supercharged.dart';

import '../../gen/assets.gen.dart';

@RoutePage()
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
    final previouslyBoarded = await ref.read(previouslyBoardedProvider.future);
    // googleFontsPending = GoogleFonts.pendingFonts([
    //   GoogleFonts.dmSans(),
      // GoogleFonts.poppins(),
      // GoogleFonts.montserrat(fontStyle: FontStyle.italic),
    // ]);

    Timer(1.seconds, () {
      // Get.offAndToNamed(
      //   previouslyBoarded ? RouteHelper.getHomeTab() : RouteHelper.getOnBoarding(),
      // );
      AutoRouter.of(context).push(previouslyBoarded ? const MainTabsRoute() : const OnBoardingRoute());
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
            child: Assets.images.logo.image()),
      ),
    );
  }
}
