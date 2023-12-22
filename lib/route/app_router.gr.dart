// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ApplyCouponRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ApplyCouponPage(),
      );
    },
    CategoryProductListRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CategoryProductListRouteArgs>(
          orElse: () => CategoryProductListRouteArgs(
              selectedCategoryId: pathParams.getInt('category-id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoryProductListPage(
          key: args.key,
          selectedCategoryId: args.selectedCategoryId,
        ),
      );
    },
    CategoryTabRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CategoryTabRouteArgs>(
          orElse: () => CategoryTabRouteArgs(
              selectedCategoryId: pathParams.optInt('category-id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoryTabPage(
          key: args.key,
          selectedCategoryId: args.selectedCategoryId,
        ),
      );
    },
    FaqsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FaqsPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginPage(key: args.key),
      );
    },
    MainTabsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainTabsPage(),
      );
    },
    MyCartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyCartPage(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingPage(),
      );
    },
    OrderDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<OrderDetailsRouteArgs>(
          orElse: () =>
              OrderDetailsRouteArgs(orderId: pathParams.getInt('orderId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderDetailsPage(
          orderId: args.orderId,
          key: args.key,
        ),
      );
    },
    PaymentMethodRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PaymentMethodPage(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PrivacyPolicyPage(),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailRouteArgs>(
          orElse: () =>
              ProductDetailRouteArgs(productId: pathParams.getInt('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductDetailPage(
          key: args.key,
          productId: args.productId,
        ),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SignUpPage(key: args.key),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    SupportRoute.name: (routeData) {
      final args = routeData.argsAs<SupportRouteArgs>(
          orElse: () => const SupportRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SupportPage(key: args.key),
      );
    },
    TermsAndConditionsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TermsAndConditionsPage(),
      );
    },
    UpdateProfileRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateProfileRouteArgs>(
          orElse: () => const UpdateProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UpdateProfilePage(key: args.key),
      );
    },
    VerificationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VerificationPage(),
      );
    },
    ViewProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ViewProfilePage(),
      );
    },
    WalletRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WalletPage(),
      );
    },
    YourLocationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const YourLocationPage(),
      );
    },
  };
}

/// generated route for
/// [ApplyCouponPage]
class ApplyCouponRoute extends PageRouteInfo<void> {
  const ApplyCouponRoute({List<PageRouteInfo>? children})
      : super(
          ApplyCouponRoute.name,
          initialChildren: children,
        );

  static const String name = 'ApplyCouponRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoryProductListPage]
class CategoryProductListRoute
    extends PageRouteInfo<CategoryProductListRouteArgs> {
  CategoryProductListRoute({
    Key? key,
    required int selectedCategoryId,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryProductListRoute.name,
          args: CategoryProductListRouteArgs(
            key: key,
            selectedCategoryId: selectedCategoryId,
          ),
          rawPathParams: {'category-id': selectedCategoryId},
          initialChildren: children,
        );

  static const String name = 'CategoryProductListRoute';

  static const PageInfo<CategoryProductListRouteArgs> page =
      PageInfo<CategoryProductListRouteArgs>(name);
}

class CategoryProductListRouteArgs {
  const CategoryProductListRouteArgs({
    this.key,
    required this.selectedCategoryId,
  });

  final Key? key;

  final int selectedCategoryId;

  @override
  String toString() {
    return 'CategoryProductListRouteArgs{key: $key, selectedCategoryId: $selectedCategoryId}';
  }
}

/// generated route for
/// [CategoryTabPage]
class CategoryTabRoute extends PageRouteInfo<CategoryTabRouteArgs> {
  CategoryTabRoute({
    Key? key,
    int? selectedCategoryId,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryTabRoute.name,
          args: CategoryTabRouteArgs(
            key: key,
            selectedCategoryId: selectedCategoryId,
          ),
          rawPathParams: {'category-id': selectedCategoryId},
          initialChildren: children,
        );

  static const String name = 'CategoryTabRoute';

  static const PageInfo<CategoryTabRouteArgs> page =
      PageInfo<CategoryTabRouteArgs>(name);
}

class CategoryTabRouteArgs {
  const CategoryTabRouteArgs({
    this.key,
    this.selectedCategoryId,
  });

  final Key? key;

  final int? selectedCategoryId;

  @override
  String toString() {
    return 'CategoryTabRouteArgs{key: $key, selectedCategoryId: $selectedCategoryId}';
  }
}

/// generated route for
/// [FaqsPage]
class FaqsRoute extends PageRouteInfo<void> {
  const FaqsRoute({List<PageRouteInfo>? children})
      : super(
          FaqsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FaqsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MainTabsPage]
class MainTabsRoute extends PageRouteInfo<void> {
  const MainTabsRoute({List<PageRouteInfo>? children})
      : super(
          MainTabsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainTabsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyCartPage]
class MyCartRoute extends PageRouteInfo<void> {
  const MyCartRoute({List<PageRouteInfo>? children})
      : super(
          MyCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyCartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnBoardingPage]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderDetailsPage]
class OrderDetailsRoute extends PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({
    required int orderId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          OrderDetailsRoute.name,
          args: OrderDetailsRouteArgs(
            orderId: orderId,
            key: key,
          ),
          rawPathParams: {'orderId': orderId},
          initialChildren: children,
        );

  static const String name = 'OrderDetailsRoute';

  static const PageInfo<OrderDetailsRouteArgs> page =
      PageInfo<OrderDetailsRouteArgs>(name);
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({
    required this.orderId,
    this.key,
  });

  final int orderId;

  final Key? key;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{orderId: $orderId, key: $key}';
  }
}

/// generated route for
/// [PaymentMethodPage]
class PaymentMethodRoute extends PageRouteInfo<void> {
  const PaymentMethodRoute({List<PageRouteInfo>? children})
      : super(
          PaymentMethodRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentMethodRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PrivacyPolicyPage]
class PrivacyPolicyRoute extends PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductDetailPage]
class ProductDetailRoute extends PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    Key? key,
    required int productId,
    List<PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            productId: productId,
          ),
          rawPathParams: {'id': productId},
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const PageInfo<ProductDetailRouteArgs> page =
      PageInfo<ProductDetailRouteArgs>(name);
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.productId,
  });

  final Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<SignUpRouteArgs> page = PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SupportPage]
class SupportRoute extends PageRouteInfo<SupportRouteArgs> {
  SupportRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SupportRoute.name,
          args: SupportRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SupportRoute';

  static const PageInfo<SupportRouteArgs> page =
      PageInfo<SupportRouteArgs>(name);
}

class SupportRouteArgs {
  const SupportRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SupportRouteArgs{key: $key}';
  }
}

/// generated route for
/// [TermsAndConditionsPage]
class TermsAndConditionsRoute extends PageRouteInfo<void> {
  const TermsAndConditionsRoute({List<PageRouteInfo>? children})
      : super(
          TermsAndConditionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsAndConditionsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UpdateProfilePage]
class UpdateProfileRoute extends PageRouteInfo<UpdateProfileRouteArgs> {
  UpdateProfileRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UpdateProfileRoute.name,
          args: UpdateProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'UpdateProfileRoute';

  static const PageInfo<UpdateProfileRouteArgs> page =
      PageInfo<UpdateProfileRouteArgs>(name);
}

class UpdateProfileRouteArgs {
  const UpdateProfileRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UpdateProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [VerificationPage]
class VerificationRoute extends PageRouteInfo<void> {
  const VerificationRoute({List<PageRouteInfo>? children})
      : super(
          VerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ViewProfilePage]
class ViewProfileRoute extends PageRouteInfo<void> {
  const ViewProfileRoute({List<PageRouteInfo>? children})
      : super(
          ViewProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ViewProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WalletPage]
class WalletRoute extends PageRouteInfo<void> {
  const WalletRoute({List<PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [YourLocationPage]
class YourLocationRoute extends PageRouteInfo<void> {
  const YourLocationRoute({List<PageRouteInfo>? children})
      : super(
          YourLocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'YourLocationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
