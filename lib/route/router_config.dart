import 'package:go_router/go_router.dart';
import 'package:instant_grrocery_delivery/ui/views/auth/login_page.dart';
import 'package:instant_grrocery_delivery/ui/views/auth/sign_up.dart';
import 'package:instant_grrocery_delivery/ui/views/auth/verification.dart';
import 'package:instant_grrocery_delivery/ui/views/cart/apply_coupon.dart';
import 'package:instant_grrocery_delivery/ui/views/cart/my_cart_page.dart';
import 'package:instant_grrocery_delivery/ui/views/cart/payment_method_page.dart';
import 'package:instant_grrocery_delivery/ui/views/cart/wallet.dart';
import 'package:instant_grrocery_delivery/ui/views/category/category_product_list_page.dart';
import 'package:instant_grrocery_delivery/ui/views/category/category_tab.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/main_tabs.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/order/order_details_page.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/faq_page.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/privacy_policy_page.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/support.dart';
import 'package:instant_grrocery_delivery/ui/views/home_tab/tab_views/support/terms_and_conditions_page.dart';
import 'package:instant_grrocery_delivery/ui/views/on_boarding_page.dart';
import 'package:instant_grrocery_delivery/ui/views/product/product_detail_page.dart';
import 'package:instant_grrocery_delivery/ui/views/profile/update_profile_page.dart';
import 'package:instant_grrocery_delivery/ui/views/profile/view_profile_page.dart';
import 'package:instant_grrocery_delivery/ui/views/splash_page.dart';
import 'package:instant_grrocery_delivery/ui/views/your_location/your_location.dart';

final routerConfig = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/splash', builder: (context, state) => const SplashPage()),
    GoRoute(
      path: '/on-boarding',
      builder: (context, state) => const OnBoardingPage(),
    ),
    GoRoute(path: '/login', builder: (context, state) => LoginPage()),
    GoRoute(path: '/sign-up', builder: (context, state) => SignUpPage()),
    GoRoute(
      path: '/verification',
      builder: (context, state) => const VerificationPage(),
    ),
    GoRoute(path: '/home', builder: (context, state) => const MainTabsPage()),
    GoRoute(
      path: '/product-detail/:id',
      builder: (context, state) {
        final id = int.parse(state.pathParameters['id']!);
        return ProductDetailPage(productId: id);
      },
    ),
    GoRoute(
      path: '/category-tab/:categoryId',
      builder: (context, state) {
        final categoryIdString = state.pathParameters['categoryId'];
        final categoryId =
            categoryIdString != null && categoryIdString != 'null'
            ? int.tryParse(categoryIdString)
            : null;
        return CategoryTabPage(selectedCategoryId: categoryId);
      },
    ),
    GoRoute(
      path: '/category-product-list/:categoryId',
      builder: (context, state) {
        final categoryId = int.parse(state.pathParameters['categoryId']!);
        return CategoryProductListPage(selectedCategoryId: categoryId);
      },
    ),
    GoRoute(path: '/my-cart', builder: (context, state) => const MyCartPage()),
    GoRoute(
      path: '/payment-method',
      builder: (context, state) => const PaymentMethodPage(),
    ),
    GoRoute(
      path: '/apply-coupon',
      builder: (context, state) => const ApplyCouponPage(),
    ),
    GoRoute(
      path: '/order-details/:orderId',
      builder: (context, state) {
        final orderId = int.parse(state.pathParameters['orderId']!);
        return OrderDetailsPage(orderId: orderId);
      },
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ViewProfilePage(),
    ),
    GoRoute(
      path: '/update-profile',
      builder: (context, state) => UpdateProfilePage(),
    ),
    GoRoute(
      path: '/your-location',
      builder: (context, state) => const YourLocationPage(),
    ),
    GoRoute(path: '/support', builder: (context, state) => SupportPage()),
    GoRoute(path: '/faqs', builder: (context, state) => const FaqsPage()),
    GoRoute(path: '/wallet', builder: (context, state) => const WalletPage()),
    GoRoute(
      path: '/terms',
      builder: (context, state) => const TermsAndConditionsPage(),
    ),
    GoRoute(
      path: '/privacy',
      builder: (context, state) => const PrivacyPolicyPage(),
    ),
  ],
);
