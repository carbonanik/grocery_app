// import 'package:auto_route/auto_route.dart';
// import 'package:instant_grrocery_delivery/ui/views/auth/login_page.dart';
// import 'package:instant_grrocery_delivery/ui/views/auth/verification.dart';
// import 'package:instant_grrocery_delivery/ui/views/cart/wallet.dart';
// import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/order/order_details_page.dart';
// import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/privacy_policy_page.dart';
// import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/support.dart';
// import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/terms_and_conditions_page.dart';
// import 'package:instant_grrocery_delivery/ui/views/on_boarding_page.dart';
//
// import '../ui/views/auth/sign_up.dart';
// import '../ui/views/cart/apply_coupon.dart';
// import '../ui/views/cart/my_cart_page.dart';
// import '../ui/views/cart/payment_method_page.dart';
// import '../ui/views/category/category_product_list_page.dart';
// import '../ui/views/category/category_tab.dart';
// import '../ui/views/home_tab/main_tabs.dart';
// import '../ui/views/home_tab/tab_views/support/faq_page.dart';
// import '../ui/views/product/product_detail_page.dart';
// import '../ui/views/profile/view_profile_page.dart';
// import '../ui/views/profile/update_profile_page.dart';
// import '../ui/views/splash_page.dart';
// import '../ui/views/your_location/your_location.dart';
//
// part 'app_router.gr.dart';
//
// @AutoRouterConfig(
//   replaceInRouteName: 'Page,Route')
// class AppRouter extends _$AppRouter {
//
//   @override
//   RouteType get defaultRouteType => const RouteType.material();
//
//   @override
//   List<AutoRoute> get routes => [
//     AutoRoute(page: SplashPage, initial: true),
//     AutoRoute(page: OnBoardingPage),
//     AutoRoute(page: LoginPage),
//     AutoRoute(page: SignUp),
//     AutoRoute(page: VerificationPage),
//     AutoRoute(page: MainTabs),
//     AutoRoute(page: ProductDetailPage),
//     AutoRoute(
//       page: CategoryTab,
//       path: '/category-tab/:selectedCategoryId',
//     ),
//     AutoRoute(page: CategoryProductListPage),
//     AutoRoute(page: MyCartPage),
//     AutoRoute(page: PaymentMethodPage),
//     AutoRoute(page: ApplyCoupon),
//     AutoRoute(page: OrderDetailsPage),
//     AutoRoute(page: ViewProfilePage),
//     AutoRoute(page: UpdateProfilePage),
//     AutoRoute(page: YourLocation),
//     AutoRoute(page: SupportPage),
//     AutoRoute(page: FaqsPage),
//     AutoRoute(page: Wallet),
//     AutoRoute(page: TermsAndConditionsPage),
//     AutoRoute(page: PrivacyPolicyPage),
//   ];
// }