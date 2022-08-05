import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:instant_grrocery_delivery/controller/cart_database_controller.dart';
import 'package:instant_grrocery_delivery/controller/favourite_controller.dart';
import 'package:instant_grrocery_delivery/di/locator.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/model/product.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/ui/pages/add_remove_button.dart';
import 'package:instant_grrocery_delivery/ui/widget/favourite_button.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../core/queries.dart';
import '../widget/product_item.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key? key, required this.productId, this.heroPrefix = 0}) : super(key: key);

  final int productId;
  final bottomBarHeight = Dimension.height(100);
  final int heroPrefix;

  final cartDatabaseController = locator.get<CartDatabaseController>();
  final favouriteController = locator.get<FavouriteController>();

  @override
  Widget build(BuildContext context) {
    cartDatabaseController.getInitialQuantity(productId);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      favouriteController.getIsFavourite(productId);
    });

    return Scaffold(
      body: SafeArea(
        child: Query(
            options: QueryOptions(
              document: gql(Queries.getProductById(productId)), // this is the query string you just created
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

              var productJson = result.data?['product_by_pk'];

              if (productJson == null) {
                return const Center(
                    child: Text(
                  'No Product Found',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ));
              }

              Product product = Product.fromJson(productJson);

              return Stack(
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
                          padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: SizedBox(
                                    height: Dimension.height(320),
                                    child: Hero(tag: '${heroPrefix}product_image${product.id}', child: Image.network(product.image))),
                              ),
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
                                  Obx(() {
                                    return FavouriteButton(
                                      onTap: () => favouriteController.toggleFavourite(productId),
                                      isFavourite: favouriteController.isFavourite.value,
                                    );
                                  }),
                                ],
                              ),
                              SizedBox(
                                height: Dimension.height(10),
                              ),
                              Text(
                                product.weight,
                                style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20, color: Colors.grey),
                              ),
                              SizedBox(
                                height: Dimension.height(20),
                              ),
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
                                  Hero(
                                    tag: '${heroPrefix}add_to_cart${product.id}',
                                    child: Material(
                                      type: MaterialType.transparency,
                                      child: Obx(() => AddRemoveButton(
                                            quantity: cartDatabaseController.currentProductQuantity.value,
                                            onAdd: () {
                                              cartDatabaseController.increaseQuantity(product);
                                            },
                                            onRemove: () {
                                              cartDatabaseController.decreaseQuantity(product);
                                            },
                                          )),
                                    ),
                                  )
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
                              Text(
                                product.description,
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
                        // simmilar product list
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
                                    height: Dimension.height(190),
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: productList.length,
                                      itemBuilder: (context, index) {
                                        final similarProduct = productList[index];
                                        return Container(
                                            margin: EdgeInsets.only(left: Dimension.width(20)),
                                            child: ProductItem(
                                              product: similarProduct,
                                              cartDatabaseController: cartDatabaseController,
                                              heroPrefix: heroPrefix + 1,
                                            ));
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
                          Obx(() => Text('${cartDatabaseController.currentProductQuantity} item',
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white,
                              ))),
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
                          Obx(() => Text(
                                '\$${(product.price * cartDatabaseController.currentProductQuantity.value).toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              )),
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
                              decoration: BoxDecoration(color: greenColor, borderRadius: BorderRadius.circular(10)),
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
              );
            }),
      ),
    );
  }
}
