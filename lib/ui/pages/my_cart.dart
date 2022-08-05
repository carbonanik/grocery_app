import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:instant_grrocery_delivery/controller/cart_database_controller.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/model/product.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../core/queries.dart';
import '../../di/locator.dart';
import '../widget/cart_list_item.dart';
import '../widget/product_item.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key}) : super(key: key);

  final CartDatabaseController cartDatabaseController = locator.get();

  @override
  Widget build(BuildContext context) {
    final bottomBarHeight = Dimension.height(140);
    cartDatabaseController.getCartList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'My Cart',
          style: TextStyle(
            fontSize: Dimension.height(20),
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimension.height(20)),
                  topRight: Radius.circular(Dimension.height(20)),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Dimension.height(20),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: Dimension.height(250),
                    ),

                    /// cart item list
                    child: Obx(
                        () => Container(
                            padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Dismissible(
                                  key: Key(cartDatabaseController.cartList[index].id.toString()),
                                  onDismissed: (direction) {
                                    cartDatabaseController.deleteCartItem(cartDatabaseController.cartList[index].id!);
                                  },
                                  background: Container(
                                    color: Colors.red,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                                        child: const Icon(
                                          Icons.delete,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  child: CartListItem(
                                  item: cartDatabaseController.cartList[index],
                                  onAdd: () {
                                    cartDatabaseController.increaseQuantityFromCart(cartDatabaseController.cartList[index]);
                                  },
                                  onRemove: () {
                                    cartDatabaseController.decreaseQuantityFromCart(cartDatabaseController.cartList[index]);
                                  },
                                  ),
                                );
                              },
                              itemCount: cartDatabaseController.cartList.length,
                            ),
                          ),

                    ),
                  ),
                  SizedBox(
                    height: Dimension.height(10),
                  ),
                  GestureDetector(
                    onTap: (){
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
                          Icon(
                            Icons.label,
                            color: greenColor,
                            size: 20,
                          ),
                          SizedBox(width: Dimension.width(20) ,),
                          Text(
                            'Add coupon code',
                            style: TextStyle(
                              fontSize: Dimension.height(16),
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const Spacer(),
                          Icon(Icons.arrow_forward_ios, color: greenColor,size: 18,),
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
                            topLeft: Radius.circular(Dimension.height(30)), topRight: Radius.circular(Dimension.height(30)))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
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

                        Query(
                          options: QueryOptions(
                            document: gql(Queries.getAllProducts()), // this is the query string you just created
                            fetchPolicy: FetchPolicy.cacheAndNetwork,
                            // pollInterval: const Duration(seconds: 10),
                          ),
                          builder: (QueryResult result, {VoidCallback? refetch, FetchMore? fetchMore}) {

                            if (result.hasException) {
                              return Text(result.exception.toString());
                            }

                            if (result.isLoading) {
                              return const Text('Loading');
                            }

                            List? productJson = result.data?['product'];

                            if (productJson == null || productJson.isEmpty) {
                              return const Text('No repositories');
                            }

                            List<Product> productList = productJson.map((e) => Product.fromJson(e)).toList();

                            return SizedBox(
                              height: Dimension.height(210),
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  final productItem = productList[index];
                                  return Padding(
                                    padding: EdgeInsets.only(left: Dimension.width(20)),
                                    child: ProductItem(product: productItem, cartDatabaseController: cartDatabaseController,),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: bottomBarHeight,
                  )
                ],
              ),
            ),
          ),

          ///bottom bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: bottomBarHeight,
              padding: EdgeInsets.symmetric(
                horizontal: Dimension.width(30),
              ),
              decoration: BoxDecoration(
                color: alphaBlack,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimension.height(30)),
                  topRight: Radius.circular(Dimension.height(30)),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.redAccent,),
                      SizedBox(width: Dimension.width(10),),
                      Text(
                        'Home - Uttar 18 - Dhaka',
                        style: TextStyle(
                          fontSize: Dimension.height(16),
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Change',
                        style: TextStyle(
                          fontSize: Dimension.height(16),
                          fontWeight: FontWeight.w500,
                          color: greenColor,
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
                          Obx(() => Text('\$${cartDatabaseController.totalPrice.toStringAsFixed(2)}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ))
                          ),
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
                        onTap: (){
                          Get.toNamed(RouteHelper.getPaymentMethod());
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: Dimension.width(40), vertical: Dimension.height(15)),
                          decoration: BoxDecoration(color: greenColor, borderRadius: BorderRadius.circular(5)),
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
          )
        ],
      ),
    );
  }
}
