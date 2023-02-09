import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/controller/cart_database_controller.dart';
import 'package:instant_grrocery_delivery/controller/favourite_controller.dart';
import 'package:instant_grrocery_delivery/di/locator.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/model/product.dart';
import 'package:instant_grrocery_delivery/provider/product_provider.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/pages/add_remove_button.dart';
import 'package:instant_grrocery_delivery/ui/widget/favourite_button.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../core/queries.dart';
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
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: kToolbarHeight,
                  ),
                  // product details
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Consumer(builder: (context, ref, child) {
                          final asyncValue =
                              ref.watch(getProductByIdProvider(productId));

                          return asyncValue.map(
                            data: (data) => Center(
                              child: SizedBox(
                                height: Dimension.height(320),
                                child: Hero(
                                  tag:
                                      '${heroPrefix}product_image${data.value.id}',
                                  child: Image.network(
                                    "$basePhotoUrl${data.value.image}",
                                  ),
                                ),
                              ),
                            ),
                            error: (error) => Container(),
                            loading: (loading) => Container(),
                          );
                        }),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Consumer(builder: (context, ref, child) {
                              final asyncValue =
                                  ref.watch(getProductByIdProvider(productId));

                              return asyncValue.map(
                                data: (data) => Text(
                                  data.value.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 26,
                                  ),
                                ),
                                error: (error) => Container(),
                                loading: (loading) => Container(),
                              );
                            }),
                            FavouriteButton(
                                onTap:
                                    () {}, //favouriteController.toggleFavourite(productId),
                                isFavourite:
                                    true //favouriteController.isFavourite.value,
                                ),
                          ],
                        ),
                        SizedBox(
                          height: Dimension.height(10),
                        ),
                        // Text(
                        // product.weight,
                        //   style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20, color: Colors.grey),
                        // ),
                        SizedBox(
                          height: Dimension.height(20),
                        ),
                        Row(
                          children: [
                            Consumer(builder: (context, ref, child) {
                              final asyncValue =
                                  ref.watch(getProductByIdProvider(productId));

                              return asyncValue.map(
                                data: (data) => Text(
                                  '\$${data.value.price}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                  ),
                                ),
                                error: (error) => Container(),
                                loading: (loading) =>
                                    const CircularProgressIndicator(),
                              );
                            }),
                            const Spacer(),

                            /// cart add remove button
                            Consumer(builder: (context, ref, child) {
                              final asyncValue =
                                  ref.watch(getProductByIdProvider(productId));

                              return asyncValue.map(
                                data: (data) => Hero(
                                  tag:
                                      '${heroPrefix}add_to_cart${data.value.id}',
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: AddRemoveButton(
                                        quantity:
                                            10, //cartDatabaseController.currentProductQuantity.value,
                                        onAdd: () =>
                                            {}, //cartDatabaseController.increaseQuantity(product, 1), //todo add real cart id
                                        onRemove: () =>
                                            {} //cartDatabaseController.decreaseQuantity(product),
                                        ),
                                  ),
                                ),
                                error: (error) => Container(),
                                loading: (loading) => Container(),
                              );
                            })
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
                        Consumer(builder: (context, ref, child) {
                          final asyncValue =
                              ref.watch(getProductByIdProvider(productId));

                          return asyncValue.map(
                            data: (data) => Text(
                              data.value.description,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            error: (error) => Container(),
                            loading: (loading) => Container(),
                          );
                        }),
                        SizedBox(
                          height: Dimension.height(20),
                        ),
                      ],
                    ),
                  ),
                  // simmilar product list
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: Dimension.height(20)),
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimension.height(30)),
                            topRight: Radius.circular(Dimension.height(30)))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimension.width(20)),
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
                                      margin: EdgeInsets.only(
                                          left: Dimension.width(20)),
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
                  ),
                  SizedBox(
                    height: bottomBarHeight,
                  )
                ],
              ),
            ),
            Container(
              height: kToolbarHeight,
              padding: EdgeInsets.symmetric(horizontal: Dimension.width(10)),
              color: Colors.white.withAlpha(100),
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

            ///bottom bar
            Positioned(
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
                    Text('${10} item',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        )),
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
                      final asyncValue =
                          ref.watch(getProductByIdProvider(productId));

                      return asyncValue.map(
                        data: (data) => Text(
                          '\$${(data.value.price * 1).toStringAsFixed(2)}', //todo

                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        error: (error) => Container(),
                        loading: (loading) => Container(),
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
                            color: greenColor,
                            borderRadius: BorderRadius.circular(10)),
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
            )
          ],
        ),
      ),
    );
  }
}
