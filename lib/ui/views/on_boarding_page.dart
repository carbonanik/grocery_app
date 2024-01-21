import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/gen/assets.gen.dart';
import 'package:instant_grrocery_delivery/provider/boarding_provider.dart';
import 'package:instant_grrocery_delivery/route/app_router.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/labels.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/ui/widget/buttons/action_button.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

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

@RoutePage()
class OnBoardingPage extends HookConsumerWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  static final List<OnBoardingItem> _items = [
    OnBoardingItem(image: Assets.images.undrawOnTheWayReSwjt.path, title: Labels.find, description: Labels.findYour),
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
      // Get.offAndToNamed(RouteHelper.getSignUp());
      AutoRouter.of(context).push(SignUpRoute());
    }

    void skip() async {
      await ref.read(doneBoardingProvider.future);
      // Get.offAndToNamed(RouteHelper.getHomeTab());
      AutoRouter.of(context).push(const MainTabsRoute());
    }

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ActionButton(
              enabled: true,
              onTap: skip,
              text: index.value == 2 ? "HOME" : "SKIP",
            ),
            ActionButton(
              enabled: true,
              // color: scheme.primary,
              onTap: () {
                if (controller.index < 2) {
                  index.value = index.value + 1;
                  controller.animateTo(controller.index + 1);
                } else {
                  done();
                }
              },
              text: index.value == 2 ? "SIGN UP" : "NEXT",
              color: backgroundColor,
              textColor: accentColor,
            ),
          ],
        ),
      ),
      bottomSheet: Material(
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
                    color: index.value == i ? scheme.tertiary : scheme.tertiaryContainer,
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
                    const Spacer(),
                    Container(
                      height: context.h(400),
                      width: context.w(400),
                      decoration: BoxDecoration(
                        color: foregroundColor.withOpacity(.1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(e.image),
                    ),
                    const Spacer(),
                    Text(
                      e.title,
                      style: style.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      e.description,
                      style: style.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
