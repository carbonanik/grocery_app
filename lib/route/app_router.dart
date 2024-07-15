import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/ui/views/auth/login_page.dart';
import 'package:instant_grrocery_delivery/ui/views/auth/verification.dart';
import 'package:instant_grrocery_delivery/ui/views/cart/wallet.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/order/order_details_page.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/privacy_policy_page.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/support.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/terms_and_conditions_page.dart';
import 'package:instant_grrocery_delivery/ui/views/on_boarding_page.dart';
import 'package:instant_grrocery_delivery/ui/views/auth/sign_up.dart';
import 'package:instant_grrocery_delivery/ui/views/cart/apply_coupon.dart';
import 'package:instant_grrocery_delivery/ui/views/cart/my_cart_page.dart';
import 'package:instant_grrocery_delivery/ui/views/cart/payment_method_page.dart';
import 'package:instant_grrocery_delivery/ui/views/category/category_product_list_page.dart';
import 'package:instant_grrocery_delivery/ui/views/category/category_tab.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/main_tabs.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/faq_page.dart';
import 'package:instant_grrocery_delivery/ui/views/product/product_detail_page.dart';
import 'package:instant_grrocery_delivery/ui/views/profile/view_profile_page.dart';
import 'package:instant_grrocery_delivery/ui/views/profile/update_profile_page.dart';
import 'package:instant_grrocery_delivery/ui/views/splash_page.dart';
import 'package:instant_grrocery_delivery/ui/views/your_location/your_location.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page),
        AutoRoute(page: OnBoardingRoute.page),
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: VerificationRoute.page),
        AutoRoute(page: MainTabsRoute.page),
        AutoRoute(page: ProductDetailRoute.page),
        AutoRoute(
          page: CategoryTabRoute.page,
          path: '/category-tab/:selectedCategoryId',
        ),
        AutoRoute(page: CategoryProductListRoute.page),
        AutoRoute(page: MyCartRoute.page),
        AutoRoute(page: PaymentMethodRoute.page),
        AutoRoute(page: ApplyCouponRoute.page),
        AutoRoute(page: OrderDetailsRoute.page),
        AutoRoute(page: ViewProfileRoute.page),
        AutoRoute(page: UpdateProfileRoute.page),
        AutoRoute(page: YourLocationRoute.page),
        AutoRoute(page: SupportRoute.page),
        AutoRoute(page: FaqsRoute.page),
        AutoRoute(page: WalletRoute.page),
        AutoRoute(page: TermsAndConditionsRoute.page),
        AutoRoute(page: PrivacyPolicyRoute.page),
      ];
}
