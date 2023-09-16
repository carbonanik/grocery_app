import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/provider/product/product_api_provider.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../../provider/cart/cart_hive_notifier_provider.dart';
import '../../widget/cart_list_item.dart';
import '../../widget/product_item.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key}) : super(key: key);

  // final CartDatabaseController cartDatabaseController = locator.get();

  @override
  Widget build(BuildContext context) {
    final bottomBarHeight = Dimension.height(140);
    // cartDatabaseController.getCartList();
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // _bottomHalfGreen(context),
            _scrollArea(bottomBarHeight, context),
            _topBar(),
            _bottomBar(bottomBarHeight, width),
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
        color: Colors.white.withAlpha(100),
        child: const Row(
          children: [
            BackButton(
              color: Colors.black,
            ),
            Spacer(),
            Text(
              "My Cart",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.black,
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }

  Widget _scrollArea(double bottomBarHeight, context) {
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
            SizedBox(
              height: Dimension.height(20),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: Dimension.height(250),
              ),

              /// cart item list
              child: _cartItemList(),
            ),
            SizedBox(
              height: Dimension.height(10),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(RouteHelper.getApplyCoupon());
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimension.width(20),
                    vertical: Dimension.height(20)),
                margin: EdgeInsets.symmetric(horizontal: Dimension.height(20)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    Dimension.height(10),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.label,
                      color: accentColor,
                      size: 20,
                    ),
                    SizedBox(
                      width: Dimension.width(20),
                    ),
                    Text(
                      'Add coupon code',
                      style: TextStyle(
                        fontSize: Dimension.height(16),
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: accentColor,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Dimension.height(10),
            ),
            Container(
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
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                    child: const Text(
                      'Frequently Bought Together',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimension.height(20),
                  ),
                  Consumer(builder: (context, ref, child) {
                    // frequently bought together product
                    final productsAsync = ref.watch(getProductsProvider);

                    return productsAsync.map(
                      loading: (loading) => Container(),
                      error: (error) => Container(),
                      data: (data) {
                        return SizedBox(
                          height: Dimension.height(210),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              final productItem = data.value[index];
                              return Padding(
                                padding:
                                    EdgeInsets.only(left: Dimension.width(20)),
                                child: ProductItem(
                                  product: productItem,
                                  // cartDatabaseController:
                                  //     cartDatabaseController,
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  }),
                ],
              ),
            ),
            SizedBox(
              height: bottomBarHeight,
            )
          ],
        ),
      ),
    );
  }

  Consumer _cartItemList() {
    return Consumer(builder: (context, ref, child) {
      final cartDataModel = ref.watch(cartProvider);
      final cartList = cartDataModel.cartList.values.toList();
      return Container(
        padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(cartList[index].id.toString()),
              onDismissed: (direction) {},
              background: Container(
                color: Colors.red,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              child: CartListItem(
                item: cartList[index],
                onAdd: () {
                  // cartDatabaseController
                  //     .increaseQuantityFromCart(
                  //         cartDatabaseController
                  //             .cartList[index]);
                },
                onRemove: () {
                  // cartDatabaseController
                  //     .decreaseQuantityFromCart(
                  //         cartDatabaseController
                  //             .cartList[index]);
                },
              ),
            );
          },
          itemCount: cartList.length,
        ),
      );
    });
  }

  Positioned _bottomBar(double height, double width) {
    return Positioned(
      bottom: 0,
      // left: 0,
      // right: 0,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(
          horizontal: Dimension.width(30),
        ),
        decoration: BoxDecoration(
          color: foregroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimension.height(30)),
            topRight: Radius.circular(Dimension.height(30)),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.redAccent,
                ),
                SizedBox(
                  width: Dimension.width(10),
                ),
                Text(
                  'Home - Uttar 18 - Dhaka',
                  style: TextStyle(
                    fontSize: Dimension.height(16),
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () => Get.toNamed(RouteHelper.getYourLocation()),
                  child: Text(
                    'Change',
                    style: TextStyle(
                      fontSize: Dimension.height(16),
                      fontWeight: FontWeight.w500,
                      color: accentColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Dimension.height(20),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Consumer(builder: (context, ref, child) {
                      final cartDataModel = ref.watch(cartProvider);
                      return Text('\$${cartDataModel.cartPrice()}',
                          //'\$${cartDatabaseController.totalPrice.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ));
                    }),
                    SizedBox(
                      height: Dimension.height(5),
                    ),
                    const Text('View Bill',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                          color: Colors.white,
                        )),
                  ],
                ),

                const Spacer(),

                /// Continue to pay button
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getPaymentMethod());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimension.width(40),
                        vertical: Dimension.height(15)),
                    decoration: BoxDecoration(
                        color: accentColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      'Continue to pay',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
