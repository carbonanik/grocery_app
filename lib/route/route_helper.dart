// import 'package:get/get.dart';
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
// class RouteHelper {
//   static const String _splash = '/splash';
//   static const String _onBoarding = '/on-boarding';
//   static const String _login = '/login';
//   static const String _signup = '/signup';
//   static const String _verification = '/verification';
//
//   static const String _homeTab = '/home-tab';
//   static const String _categoryTab = "/category-tab";
//   static const String _categoryProductList = '/category-product-list';
//   static const String _myCart = "/my-cart";
//   static const String _productDetail = "/product-detail";
//   static const String _paymentMethod = '/payment-method';
//   static const String _applyCoupon = '/apply-coupon';
//   static const String _orderDetail = '/order-detail';
//   static const String _profile = '/profile';
//   static const String _profileEdit = '/profile-edit';
//   static const String _yourLocation = '/your-location';
//   static const String _support = '/support';
//   static const String _faqs = '/faqs';
//   static const String _wallet = '/wallet';
//   static const String _termsAndCondition = '/terms-and-condition';
//   static const String _privacyPolicy = '/privacy-policy';
//
//   static String getSplash() => _splash;
//
//   static String getOnBoarding() => _onBoarding;
//
//   static String getLogin() => _login;
//
//   static String getSignUp() => _signup;
//
//   static String getHomeTab() => _homeTab;
//
//   static String getCategoryTab({int? selectedCategoryId}) => '$_categoryTab?selectedCategoryId=$selectedCategoryId';
//
//   static String getCategoryProductList() => _categoryProductList;
//
//   static String getProductDetail(int productId) =>
//       '$_productDetail?productId=$productId';
//
//   static String getMyCart() => _myCart;
//
//   static String getPaymentMethod() => _paymentMethod;
//
//   static String getApplyCoupon() => _applyCoupon;
//
//   static String getOrderDetail(String orderId) => '$_orderDetail?orderId=$orderId';
//
//   static String getProfile() => _profile;
//
//   static String getProfileEdit() => _profileEdit;
//
//   static String getYourLocation() => _yourLocation;
//
//   static String getSupport() => _support;
//
//   static String getFaqs() => _faqs;
//
//   static String getWallet() => _wallet;
//
//   static String getTermsAndCondition() => _termsAndCondition;
//
//   static String getPrivacyPolicy() => _privacyPolicy;
//
//   //
//   static List<GetPage> routes = [
//     GetPage(
//       name: _splash,
//       page: () => const SplashPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _onBoarding,
//       page: () => const OnBoardingPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _login,
//       page: () => LoginPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _signup,
//       page: () => SignUpPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _verification,
//       page: () => const VerificationPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _homeTab,
//       page: () => const MainTabsPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _productDetail,
//       page: () {
//         int productId = int.parse(Get.parameters['productId']!);
//         return ProductDetailPage(productId: productId);
//       },
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _categoryTab,
//       page: () => CategoryTabPage(
//         selectedCategoryId:
//             Get.parameters['selectedCategoryId'] == null ? null : int.parse(Get.parameters['selectedCategoryId']!),
//       ),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _categoryProductList,
//       page: () => const CategoryProductListPage(selectedCategoryId: 1),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _myCart,
//       page: () => const MyCartPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _paymentMethod,
//       page: () => const PaymentMethodPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _applyCoupon,
//       page: () => const ApplyCouponPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _orderDetail,
//       page: () {
//         int orderId = int.parse(Get.parameters['orderId']!);
//         return OrderDetailsPage(
//           orderId: orderId,
//         );
//       },
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _profile,
//       page: () => const ViewProfilePage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _profileEdit,
//       page: () => UpdateProfilePage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _yourLocation,
//       page: () => const YourLocationPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _support,
//       page: () => SupportPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _faqs,
//       page: () => const FaqsPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _wallet,
//       page: () => const WalletPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _termsAndCondition,
//       page: () => const TermsAndConditionsPage(),
//       transition: Transition.fadeIn,
//     ),
//     GetPage(
//       name: _privacyPolicy,
//       page: () => const PrivacyPolicyPage(),
//       transition: Transition.fadeIn,
//     )
//   ];
// }
