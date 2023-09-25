import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/gen/assets.gen.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/provider/boarding_provider.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/labels.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Constants {
  static const String seen = "seen";
}

class OnBoardingItem {
  final String image;
  final String title;
  final String description;

  const OnBoardingItem({
    required this.image,
    required this.title,
    required this.description,
  });
}

class OnBoarding extends HookConsumerWidget {
  const OnBoarding({Key? key}) : super(key: key);

  static final List<OnBoardingItem> _items = [
    OnBoardingItem(
        image: Assets.images.undrawOnTheWayReSwjt.path,
        title: Labels.find,
        description: Labels.findYour),
    OnBoardingItem(
        image: Assets.images.undrawOnlineGroceriesA02y.path,
        title: Labels.productDelivery,
        description: Labels.yourProductIsDelivered),
    OnBoardingItem(
        image: Assets.images.undrawOnlinePaymentsReY8f2.path,
        title: Labels.easyAndSafePayment,
        description: Labels.payForThe),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final style = theme.textTheme;
    final controller = useTabController(initialLength: _items.length);

    final index = useState(0);

    controller.addListener(() {
      if (index.value != controller.index) {
        index.value = controller.index;
      }
    });

    void done() async {
      await ref.read(doneBoardingProvider.future);
      Get.offAndToNamed(RouteHelper.getSignUp());
    }

    void skip() async {
      await ref.read(doneBoardingProvider.future);
      Get.offAndToNamed(RouteHelper.getHomeTab());
    }

    return Scaffold(
      backgroundColor: theme.cardColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: skip,
              child: Text(index.value == 2 ? "HOME" : "SKIP"),
            ),
            MaterialButton(
              color: scheme.primary,
              onPressed: () {
                if (controller.index < 2) {
                  index.value = index.value + 1;
                  controller.animateTo(controller.index + 1);
                } else {
                  done();
                }
              },
              child: Text(index.value == 2 ? "SIGN UP" : "NEXT"),
            ),
          ],
        ),
      ),
      bottomSheet: Material(
        color: theme.cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _items.length,
              (i) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  decoration: ShapeDecoration(
                    shape: const StadiumBorder(),
                    color: index.value == i
                        ? scheme.tertiary
                        : scheme.tertiaryContainer,
                  ),
                  child: AnimatedSize(
                    duration: const Duration(milliseconds: 500),
                    reverseDuration: const Duration(milliseconds: 500),
                    child: SizedBox(
                      height: 16,
                      width: index.value == i ? 32 : 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: _items
            .map(
              (e) => Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Expanded(
                      flex: 32,
                      child: Image.asset(e.image),
                    ),
                    Text(
                      e.title,
                      style: style.headlineLarge,
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    Text(
                      e.description,
                      style: style.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(flex: 4),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
