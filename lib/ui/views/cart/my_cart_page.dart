import 'dart:ui';

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/provider/product/product_api_provider.dart';

import 'package:instant_grrocery_delivery/ui/widget/buttons/action_button.dart';
import 'package:instant_grrocery_delivery/ui/widget/opps_no_data.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/provider/cart/cart_provider.dart';
import 'package:instant_grrocery_delivery/ui/widget/cart_list_item.dart';
import 'package:instant_grrocery_delivery/ui/widget/product_item.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomBarHeight = context.h(140);
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("My Cart"),
        leading: const BackButton(color: Colors.lightGreen),
        backgroundColor: backgroundColor.withAlpha(100),
        elevation: 0,
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(color: Colors.transparent),
          ),
        ),
      ),
      body: Stack(
        children: [
          _scrollArea(bottomBarHeight, context),
          _bottomBar(context, bottomBarHeight, width),
        ],
      ),
    );
  }

  Widget _scrollArea(double bottomBarHeight, BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(minHeight: context.h(230)),

              /// cart item list
              child: _cartItemList(),
            ),
            SizedBox(height: context.h(10)),
            _addCouponCodeButton(context),
            SizedBox(height: context.h(10)),
            _similarProducts(),
            Container(height: bottomBarHeight, color: backgroundColor),
          ],
        ),
      ),
    );
  }

  GestureDetector _addCouponCodeButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.toNamed(RouteHelper.getApplyCoupon());
        context.push('/apply-coupon');
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.w(20),
          vertical: context.h(20),
        ),
        margin: EdgeInsets.symmetric(horizontal: context.h(20)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(context.h(10)),
        ),
        child: Row(
          children: [
            const Icon(Icons.label, color: accentColor, size: 20),
            SizedBox(width: context.w(20)),
            Text(
              'Add coupon code',
              style: TextStyle(
                fontSize: context.h(16),
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, color: accentColor, size: 18),
          ],
        ),
      ),
    );
  }

  Consumer _cartItemList() {
    return Consumer(
      builder: (context, ref, child) {
        final cartDataModel = ref.watch(cartProvider);
        final cartList = cartDataModel.cartList.values.toList();
        return Container(
          padding: EdgeInsets.symmetric(horizontal: context.w(20)),
          child: cartList.isNotEmpty
              ? ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      direction: DismissDirection.endToStart,
                      key: Key(cartList[index].id.toString()),
                      onDismissed: (direction) async {
                        await cartDataModel.itemRemove(cartList[index].product);
                      },
                      background: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.w(20),
                            ),
                            child: const Icon(Icons.delete, color: accentColor),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: CartListItem(
                          item: cartList[index],
                          onAdd: () async => await cartDataModel.itemIncrement(
                            cartList[index].product,
                          ),
                          onRemove: () async => await cartDataModel
                              .itemDecrement(cartList[index].product),
                        ),
                      ),
                    );
                  },
                  itemCount: cartList.length,
                )
              : const Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Center(child: OopsNoData()),
                ),
        );
      },
    );
  }

  Positioned _bottomBar(BuildContext context, double height, double width) {
    return Positioned(
      bottom: 0,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: height,
            width: width,
            padding: EdgeInsets.symmetric(horizontal: context.w(30)),
            decoration: BoxDecoration(color: foregroundColor.withAlpha(210)),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Icon(Icons.location_on, color: Colors.redAccent),
                    SizedBox(width: context.w(10)),
                    Text(
                      'Home - Uttar 18 - Dhaka',
                      style: TextStyle(
                        fontSize: context.h(16),
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        // Get.toNamed(RouteHelper.getYourLocation());
                        context.push('/your-location');
                      },
                      child: Text(
                        'Change',
                        style: TextStyle(
                          fontSize: context.h(16),
                          fontWeight: FontWeight.w500,
                          color: accentColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: context.h(20)),
                Row(
                  children: [
                    Column(
                      children: [
                        Consumer(
                          builder: (context, ref, child) {
                            final cartDataModel = ref.watch(cartProvider);
                            return Text(
                              '\$${cartDataModel.cartPrice()}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: context.h(5)),
                        const Text(
                          'View Bill',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    /// Continue to pay button
                    ActionButton(
                      enabled: true,
                      onTap: () {
                        // Get.toNamed(RouteHelper.getPaymentMethod());
                        context.push('/payment-method');
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
    return Consumer(
      builder: (context, ref, child) {
        final asyncValue = ref.watch(
          getFrequentlyBoughtTogetherProductProvider,
        );
        return asyncValue.map(
          data: (data) => Container(
            padding: EdgeInsets.symmetric(vertical: context.h(20)),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(context.h(30)),
                topRight: Radius.circular(context.h(30)),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                  child: const Text(
                    'Frequently Bought Together',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
                SizedBox(height: context.h(20)),
                SizedBox(
                  height: context.h(190),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.value.length,
                    itemBuilder: (context, index) {
                      final similarProduct = data.value[index];
                      return Container(
                        margin: EdgeInsets.only(left: context.w(20)),
                        child: ProductItem(product: similarProduct),
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
      },
    );
  }
}
