import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';
import 'package:instant_grrocery_delivery/provider/cart/cart_provider.dart';
import 'package:instant_grrocery_delivery/provider/favorite/favorite_hive_provider.dart';
import 'package:instant_grrocery_delivery/provider/product/product_api_provider.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/ui/widget/add_remove_button.dart';
import 'package:instant_grrocery_delivery/ui/widget/buttons/action_button.dart';
import 'package:instant_grrocery_delivery/ui/widget/favorite_button.dart';
import 'package:instant_grrocery_delivery/ui/widget/my_app_bar.dart';
import 'package:instant_grrocery_delivery/ui/widget/opps_no_data.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';
import 'package:instant_grrocery_delivery/ui/widget/product_item.dart';

class ProductDetailPage extends ConsumerWidget {
  ProductDetailPage({Key? key, required this.productId}) : super(key: key);

  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(getProductByIdProvider(productId));
    final cartDataModel = ref.watch(cartProvider);
    final bottomBarHeight = context.h(100);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const MyAppBar(title: 'Product Detail'),
      body: Stack(
        fit: StackFit.expand,
        children: [
          asyncValue.map(
            data: (data) => _scrollContent(
              context,
              data.value,
              cartDataModel.cartCount() > 0,
              bottomBarHeight,
            ),
            error: (error) => Column(
              children: [
                const Expanded(
                  child: OopsNoData(),
                ),
                _similarProducts(),
                cartDataModel.cartCount() > 0
                    ? Container(
                        height: bottomBarHeight,
                        color: backgroundColor,
                      )
                    : const SizedBox(),
              ],
            ),
            loading: (loading) => const Center(child: CircularProgressIndicator()),
          ),
          // _topBar(),

          cartDataModel.cartCount() > 0 ? _bottomStatic(context, bottomBarHeight) : const SizedBox(),
        ],
      ),
    );
  }

  Widget _scrollContent(BuildContext context, Product product, bool needFixedHeight, double bottomBarHeight) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: kToolbarHeight,
            ),
            _productDetail(context, product),
            _similarProducts(),
            needFixedHeight
                ? Container(
                    height: bottomBarHeight,
                    color: backgroundColor,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget _productDetail(BuildContext context, Product product) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.w(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product image
          Center(
            child: SizedBox(
              height: context.h(320),
              child: Image.network(
                "$baseImageUrl${product.image}",
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.image);
                },
              ),
            ),
          ),

          // product name and favorite button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  final dataModel = ref.watch(favoriteProvider);

                  return FavoriteButton(
                    onTap: () async => dataModel.setIsFavorite(
                      productId,
                      !dataModel.getIsFavorite(productId),
                    ),
                    isFavorite: dataModel.getIsFavorite(productId),
                  );
                },
              ),
            ],
          ),

          SizedBox(
            height: context.h(6),
          ),

          // product weight
          Text(
            product.weight,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: context.h(20),
          ),

          // product price and add remove button
          Row(
            children: [
              Text(
                '\$${product.price}',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              const Spacer(),

              /// cart add remove button
              Consumer(builder: (context, ref, child) {
                final cartDataModel = ref.watch(cartProvider);
                return AddRemoveButton(
                  quantity: cartDataModel.itemCount(productId),
                  onAdd: () async => await cartDataModel.itemIncrement(product),
                  onRemove: () async => await cartDataModel.itemDecrement(product),
                );
              }),
            ],
          ),
          SizedBox(
            height: context.h(20),
          ),

          // about product
          const Text(
            'About Product',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: context.h(15),
          ),

          // description
          Text(
            product.description,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: context.h(20),
          ),
        ],
      ),
    );
  }

  Widget _similarProducts() {
    return Consumer(builder: (context, ref, child) {
      final asyncValue = ref.watch(getSimilarProductProvider(productId));
      return asyncValue.map(
        data: (data) => Container(
          padding: EdgeInsets.symmetric(vertical: context.h(20)),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(context.h(30)),
              topRight: Radius.circular(
                context.h(30),
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                child: const Text(
                  'Similar Products',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: context.h(20),
              ),
              SizedBox(
                height: context.h(190),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.value.length,
                  itemBuilder: (context, index) {
                    final similarProduct = data.value[index];
                    return Container(
                      margin: EdgeInsets.only(left: context.w(20)),
                      child: ProductItem(
                        product: similarProduct,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        error: (error) => Container(),
        loading: (loading) => Container(),
      );
    });
  }

  Widget _bottomStatic(BuildContext context, double bottomBarHeight) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: bottomBarHeight,
            padding: EdgeInsets.symmetric(
              horizontal: context.w(20),
            ),
            decoration: BoxDecoration(
              color: foregroundColor.withAlpha(210),
            ),
            child: Row(
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    final cartDataModel = ref.watch(cartProvider);

                    return Text(
                      '${cartDataModel.cartCount()} item',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
                SizedBox(
                  width: context.w(15),
                ),
                Container(
                  height: 35,
                  width: 1,
                  color: accentColor,
                ),
                SizedBox(
                  width: context.w(15),
                ),
                Consumer(builder: (context, ref, child) {
                  final cartDataModel = ref.watch(cartProvider);

                  return Text(
                    '\$${(cartDataModel.cartPrice()).toStringAsFixed(2)}', //todo
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  );
                }),
                const Spacer(),

                /// view cart button
                ActionButton(
                  enabled: true,
                  onTap: () {
                    Get.toNamed(RouteHelper.getMyCart());
                  },
                  text: 'View Cart',
                  icon: Icons.shopping_cart,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
