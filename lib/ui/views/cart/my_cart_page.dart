import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/provider/product/product_api_provider.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/widget/buttons/action_button.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';

import '../../../provider/cart/cart_provider.dart';
import '../../widget/cart_list_item.dart';
import '../../widget/product_item.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomBarHeight = Dimension.height(140);
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("My Cart"),
        leading: const BackButton(
          color: Colors.lightGreen,
        ),
        backgroundColor: backgroundColor.withAlpha(100),
        elevation: 0,
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          _scrollArea(bottomBarHeight, context),
          _bottomBar(bottomBarHeight, width),
        ],
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
            // const SizedBox(
            //   height: kToolbarHeight,
            // ),
            // SizedBox(
            //   height: Dimension.height(20),
            // ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: Dimension.height(230),
              ),

              /// cart item list
              child: _cartItemList(),
            ),
            SizedBox(
              height: Dimension.height(10),
            ),
            _addCouponCodeButton(),
            SizedBox(
              height: Dimension.height(10),
            ),
            _similarProducts(),
            Container(
              height: bottomBarHeight,
              color: backgroundColor,
            )
          ],
        ),
      ),
    );
  }

  GestureDetector _addCouponCodeButton() {
    return GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.getApplyCoupon());
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: Dimension.width(20), vertical: Dimension.height(20)),
              margin: EdgeInsets.symmetric(horizontal: Dimension.height(20)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  Dimension.height(10),
                ),
              ),
              child: Row(
                children: [
                  const Icon(
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
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: accentColor,
                    size: 18,
                  ),
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
              direction:  DismissDirection.endToStart,
              key: Key(cartList[index].id.toString()),
              onDismissed: (direction) {
                cartDataModel.itemRemove(cartList[index].product);
              },
              background: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                    child: const Icon(
                      Icons.delete,
                      color: accentColor,
                    ),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CartListItem(
                  item: cartList[index],
                  onAdd: () => cartDataModel.itemIncrement(cartList[index].product),
                  onRemove: () => cartDataModel.itemDecrement(cartList[index].product),
                ),
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
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: height,
            width: width,
            padding: EdgeInsets.symmetric(
              horizontal: Dimension.width(30),
            ),
            decoration: BoxDecoration(
              color: foregroundColor.withAlpha(210),
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
                    ActionButton(
                      enabled: true,
                      onTap: () {
                        Get.toNamed(RouteHelper.getPaymentMethod());
                      },
                      text: 'Continue Pay',
                      icon: Icons.payment,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _similarProducts() {
    return Consumer(builder: (context, ref, child) {
      final asyncValue = ref.watch(getFrequentlyBoughtTogetherProductProvider);
      return asyncValue.map(
        data: (data) => Container(
          padding: EdgeInsets.symmetric(vertical: Dimension.height(20)),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimension.height(30)),
              topRight: Radius.circular(
                Dimension.height(30),
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                child: const Text(
                  'Frequently Bought Together',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: Dimension.height(20),
              ),
              SizedBox(
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
}
