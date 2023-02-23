import 'package:get/get.dart';
import '../ui/pages/apply_coupon.dart';
import '../ui/pages/category_product_list.dart';
import '../ui/pages/category_tab.dart';
import '../ui/pages/home_tabs.dart';
import '../ui/pages/my_cart.dart';
import '../ui/pages/payment_method.dart';
import '../ui/pages/product_detail.dart';

class RouteHelper {
  static const String _initial = '/';
  static const String _categoryTab = "/category-tab";
  static const String _categoryProductList = '/category-product-list';
  static const String _productDetail = "/product-detail";
  static const String _myCart = "/my-cart";
  static const String _paymentMethod = '/payment-method';
  static const String _applyCoupon = '/apply-coupon';

  static String getInitial() => _initial;

  static String getCategoryTab({int? selectedCategoryId}) =>
      '$_categoryTab?selectedCategoryId=$selectedCategoryId';

  static String getCategoryProductList() => _categoryProductList;

  static String getProductDetail(int productId, int heroPrefix) =>
      '$_productDetail?productId=$productId&heroPrefix=$heroPrefix';

  static String getMyCart() => _myCart;

  static String getPaymentMethod() => _paymentMethod;
  static String getApplyCoupon() => _applyCoupon;

  static List<GetPage> routes = [
    GetPage(
      name: _initial,
      page: () => HomeTabs(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _productDetail,
      page: () {
        int productId = int.parse(Get.parameters['productId']!);
        int heroPrefix = int.parse(Get.parameters['heroPrefix']!);
        return ProductDetail(productId: productId, heroPrefix: heroPrefix);
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _categoryTab,
      page: () => CategoryTab(
        selectedCategoryId: Get.parameters['selectedCategoryId'] == null
            ? null
            : int.parse(Get.parameters['selectedCategoryId']!),
      ),
    ),
    GetPage(
      name: _categoryProductList,
      page: () => const CategoryProductList(selectedCategoryId: 1),
    ),
    GetPage(name: _myCart, page: () => MyCart()),
    GetPage(name: _paymentMethod, page: () => PaymentMethod()),
    GetPage(name: _applyCoupon, page: () => const ApplyCoupon())
  ];
}
