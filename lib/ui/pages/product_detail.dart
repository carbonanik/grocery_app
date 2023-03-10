import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/provider/cart_provider.dart';
import 'package:instant_grrocery_delivery/provider/favorite_provider.dart';
import 'package:instant_grrocery_delivery/provider/product_provider.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/pages/add_remove_button.dart';
import 'package:instant_grrocery_delivery/ui/widget/favorite_button.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../widget/product_item.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key? key, required this.productId, this.heroPrefix = 0})
      : super(key: key);

  final int productId;
  final bottomBarHeight = Dimension.height(100);
  final int heroPrefix;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // _bottomHalfGreen(context),
            _scrollContent(context),
            _topBar(),
            _bottomStatic(),
          ],
        ),
      ),
    );
  }

  SizedBox _scrollContent(BuildContext context) {
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
            _productDetail(),
            _similarProducts(),
            SizedBox(
              height: bottomBarHeight,
            ),
          ],
        ),
      ),
    );
  }

  Positioned _bottomHalfGreen(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        color: backgroundColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }

  Positioned _topBar() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: kToolbarHeight,
        padding: EdgeInsets.symmetric(horizontal: Dimension.width(10)),
        color: backgroundColor.withAlpha(100),
        child: Row(children: const [
          BackButton(
            color: Colors.black,
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
            onPressed: null,
          ),
        ]),
      ),
    );
  }

  Widget _productDetail() {
    return Consumer(
      builder: (context, ref, child) {
        final asyncValue = ref.watch(getProductByIdProvider(productId));
        return asyncValue.map(
          data: (data) => Container(
            padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // product image
                Center(
                  child: SizedBox(
                    height: Dimension.height(320),
                    child: Hero(
                      tag: '${heroPrefix}product_image${data.value.id}',
                      child: Image.network(
                        "$baseImageUrl${data.value.image}",
                        errorBuilder: (context, error, stackTrace) {
                          print(error);
                          return Icon(Icons.image);
                        },
                      ),
                    ),
                  ),
                ),

                // product name and favorite button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.value.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 26,
                      ),
                    ),
                    Consumer(builder: (context, ref, child) {
                      final dataModel = ref.watch(favoriteDataModelProvider);

                      return FavoriteButton(
                          onTap: () => dataModel.setIsFavorite(
                                productId,
                                !dataModel.getIsFavorite(productId),
                              ),
                          isFavorite: dataModel.getIsFavorite(productId));
                    }),
                  ],
                ),

                SizedBox(
                  height: Dimension.height(10),
                ),

                // product weight
                Text(
                  data.value.weight,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: Dimension.height(20),
                ),

                // product price and add remove button
                Row(
                  children: [
                    Text(
                      '\$${data.value.price}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                    const Spacer(),

                    /// cart add remove button
                    Consumer(builder: (context, ref, child) {
                      final cartDataModel = ref.watch(cartListProductsProvider);
                      return Hero(
                        tag: '${heroPrefix}add_to_cart${data.value.id}',
                        child: Material(
                          type: MaterialType.transparency,
                          child: AddRemoveButton(
                            quantity: cartDataModel.itemCount(productId),
                            onAdd: () => cartDataModel.itemIncrement(
                              data.value,
                            ),
                            onRemove: () => cartDataModel.itemDecrement(
                              data.value,
                            ),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: Dimension.height(20),
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
                  height: Dimension.height(15),
                ),

                // description
                Text(
                  data.value.description,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: Dimension.height(20),
                ),
              ],
            ),
          ),
          error: (error) => Text(error.toString()),
          loading: (loading) => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

  Container _similarProducts() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Dimension.height(20)),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimension.height(30)),
              topRight: Radius.circular(Dimension.height(30)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
            child: const Text(
              'Similar Products',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: Dimension.height(20),
          ),
          Consumer(builder: (context, ref, child) {
            final asyncValue = ref.watch(getProductsProvider);

            return asyncValue.map(
              data: (data) => SizedBox(
                height: Dimension.height(190),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.value.length,
                  itemBuilder: (context, index) {
                    final similarProduct = data.value[index];
                    return Container(
                        margin: EdgeInsets.only(left: Dimension.width(20)),
                        child: ProductItem(
                          product: similarProduct,
                          // cartDatabaseController: cartDatabaseController,
                          heroPrefix: heroPrefix + 1,
                        ));
                  },
                ),
              ),
              error: (error) => Container(),
              loading: (loading) => Container(),
            );
          })
        ],
      ),
    );
  }

  Positioned _bottomStatic() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: bottomBarHeight,
        padding: EdgeInsets.symmetric(
          horizontal: Dimension.width(20),
        ),
        decoration: BoxDecoration(
          color: alphaBlack,
        ),
        child: Row(
          children: [
            Consumer(builder: (context, ref, child) {
              final cartDataModel = ref.watch(cartListProductsProvider);

              return Text(
                '${cartDataModel.cartCount()} item',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white,
                ),
              );
            }),
            SizedBox(
              width: Dimension.width(15),
            ),
            Container(
              height: 35,
              width: 1,
              color: greenColor,
            ),
            SizedBox(
              width: Dimension.width(15),
            ),
            Consumer(builder: (context, ref, child) {
              final cartDataModel = ref.watch(cartListProductsProvider);

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
            GestureDetector(
              onTap: () {
                Get.toNamed(RouteHelper.getMyCart());
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimension.width(20),
                  vertical: Dimension.height(15),
                ),
                decoration: BoxDecoration(
                    color: greenColor, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: Dimension.width(10),
                    ),
                    const Text(
                      'View Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
