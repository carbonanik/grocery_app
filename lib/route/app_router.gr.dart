// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [ApplyCouponPage]
class ApplyCouponRoute extends PageRouteInfo<void> {
  const ApplyCouponRoute({List<PageRouteInfo>? children})
    : super(ApplyCouponRoute.name, initialChildren: children);

  static const String name = 'ApplyCouponRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ApplyCouponPage();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CategoryProductListRouteArgs>(
        orElse: () => CategoryProductListRouteArgs(
          selectedCategoryId: pathParams.getInt('category-id'),
        ),
      );
      return CategoryProductListPage(
        key: args.key,
        selectedCategoryId: args.selectedCategoryId,
      );
    },
  );
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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CategoryProductListRouteArgs) return false;
    return key == other.key && selectedCategoryId == other.selectedCategoryId;
  }

  @override
  int get hashCode => key.hashCode ^ selectedCategoryId.hashCode;
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CategoryTabRouteArgs>(
        orElse: () => CategoryTabRouteArgs(
          selectedCategoryId: pathParams.optInt('category-id'),
        ),
      );
      return CategoryTabPage(
        key: args.key,
        selectedCategoryId: args.selectedCategoryId,
      );
    },
  );
}

class CategoryTabRouteArgs {
  const CategoryTabRouteArgs({this.key, this.selectedCategoryId});

  final Key? key;

  final int? selectedCategoryId;

  @override
  String toString() {
    return 'CategoryTabRouteArgs{key: $key, selectedCategoryId: $selectedCategoryId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CategoryTabRouteArgs) return false;
    return key == other.key && selectedCategoryId == other.selectedCategoryId;
  }

  @override
  int get hashCode => key.hashCode ^ selectedCategoryId.hashCode;
}

/// generated route for
/// [FaqsPage]
class FaqsRoute extends PageRouteInfo<void> {
  const FaqsRoute({List<PageRouteInfo>? children})
    : super(FaqsRoute.name, initialChildren: children);

  static const String name = 'FaqsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FaqsPage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        LoginRoute.name,
        args: LoginRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(
        orElse: () => const LoginRouteArgs(),
      );
      return LoginPage(key: args.key);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LoginRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [MainTabsPage]
class MainTabsRoute extends PageRouteInfo<void> {
  const MainTabsRoute({List<PageRouteInfo>? children})
    : super(MainTabsRoute.name, initialChildren: children);

  static const String name = 'MainTabsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainTabsPage();
    },
  );
}

/// generated route for
/// [MyCartPage]
class MyCartRoute extends PageRouteInfo<void> {
  const MyCartRoute({List<PageRouteInfo>? children})
    : super(MyCartRoute.name, initialChildren: children);

  static const String name = 'MyCartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MyCartPage();
    },
  );
}

/// generated route for
/// [OnBoardingPage]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute({List<PageRouteInfo>? children})
    : super(OnBoardingRoute.name, initialChildren: children);

  static const String name = 'OnBoardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnBoardingPage();
    },
  );
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
         args: OrderDetailsRouteArgs(orderId: orderId, key: key),
         rawPathParams: {'orderId': orderId},
         initialChildren: children,
       );

  static const String name = 'OrderDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<OrderDetailsRouteArgs>(
        orElse: () =>
            OrderDetailsRouteArgs(orderId: pathParams.getInt('orderId')),
      );
      return OrderDetailsPage(orderId: args.orderId, key: args.key);
    },
  );
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({required this.orderId, this.key});

  final int orderId;

  final Key? key;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{orderId: $orderId, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OrderDetailsRouteArgs) return false;
    return orderId == other.orderId && key == other.key;
  }

  @override
  int get hashCode => orderId.hashCode ^ key.hashCode;
}

/// generated route for
/// [PaymentMethodPage]
class PaymentMethodRoute extends PageRouteInfo<void> {
  const PaymentMethodRoute({List<PageRouteInfo>? children})
    : super(PaymentMethodRoute.name, initialChildren: children);

  static const String name = 'PaymentMethodRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PaymentMethodPage();
    },
  );
}

/// generated route for
/// [PrivacyPolicyPage]
class PrivacyPolicyRoute extends PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<PageRouteInfo>? children})
    : super(PrivacyPolicyRoute.name, initialChildren: children);

  static const String name = 'PrivacyPolicyRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PrivacyPolicyPage();
    },
  );
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
         args: ProductDetailRouteArgs(key: key, productId: productId),
         rawPathParams: {'id': productId},
         initialChildren: children,
       );

  static const String name = 'ProductDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProductDetailRouteArgs>(
        orElse: () =>
            ProductDetailRouteArgs(productId: pathParams.getInt('id')),
      );
      return ProductDetailPage(key: args.key, productId: args.productId);
    },
  );
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({this.key, required this.productId});

  final Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductDetailRouteArgs) return false;
    return key == other.key && productId == other.productId;
  }

  @override
  int get hashCode => key.hashCode ^ productId.hashCode;
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        SignUpRoute.name,
        args: SignUpRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'SignUpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignUpRouteArgs>(
        orElse: () => const SignUpRouteArgs(),
      );
      return SignUpPage(key: args.key);
    },
  );
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SignUpRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}

/// generated route for
/// [SupportPage]
class SupportRoute extends PageRouteInfo<SupportRouteArgs> {
  SupportRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        SupportRoute.name,
        args: SupportRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'SupportRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SupportRouteArgs>(
        orElse: () => const SupportRouteArgs(),
      );
      return SupportPage(key: args.key);
    },
  );
}

class SupportRouteArgs {
  const SupportRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SupportRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SupportRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [TermsAndConditionsPage]
class TermsAndConditionsRoute extends PageRouteInfo<void> {
  const TermsAndConditionsRoute({List<PageRouteInfo>? children})
    : super(TermsAndConditionsRoute.name, initialChildren: children);

  static const String name = 'TermsAndConditionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TermsAndConditionsPage();
    },
  );
}

/// generated route for
/// [UpdateProfilePage]
class UpdateProfileRoute extends PageRouteInfo<UpdateProfileRouteArgs> {
  UpdateProfileRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        UpdateProfileRoute.name,
        args: UpdateProfileRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'UpdateProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UpdateProfileRouteArgs>(
        orElse: () => const UpdateProfileRouteArgs(),
      );
      return UpdateProfilePage(key: args.key);
    },
  );
}

class UpdateProfileRouteArgs {
  const UpdateProfileRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UpdateProfileRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UpdateProfileRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [VerificationPage]
class VerificationRoute extends PageRouteInfo<void> {
  const VerificationRoute({List<PageRouteInfo>? children})
    : super(VerificationRoute.name, initialChildren: children);

  static const String name = 'VerificationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const VerificationPage();
    },
  );
}

/// generated route for
/// [ViewProfilePage]
class ViewProfileRoute extends PageRouteInfo<void> {
  const ViewProfileRoute({List<PageRouteInfo>? children})
    : super(ViewProfileRoute.name, initialChildren: children);

  static const String name = 'ViewProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ViewProfilePage();
    },
  );
}

/// generated route for
/// [WalletPage]
class WalletRoute extends PageRouteInfo<void> {
  const WalletRoute({List<PageRouteInfo>? children})
    : super(WalletRoute.name, initialChildren: children);

  static const String name = 'WalletRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WalletPage();
    },
  );
}

/// generated route for
/// [YourLocationPage]
class YourLocationRoute extends PageRouteInfo<void> {
  const YourLocationRoute({List<PageRouteInfo>? children})
    : super(YourLocationRoute.name, initialChildren: children);

  static const String name = 'YourLocationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const YourLocationPage();
    },
  );
}
