import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/model/category.dart';
import 'package:instant_grrocery_delivery/model/product.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../controller/cart_database_controller.dart';
import '../../core/queries.dart';
import '../../di/locator.dart';
import '../widget/product_item.dart';
import 'my_action_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> featuredImages = [
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207526/samples/food/spices.jpg',
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207539/cld-sample-4.jpg',
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207516/samples/food/dessert.jpg',
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207518/samples/food/pot-mussels.jpg',
    ];

    final CartDatabaseController cartDatabaseController = locator.get();

    return Scaffold(
      floatingActionButton: Obx(() {
        return MyActionButton(count: cartDatabaseController.totalQuantity.value);
      }),
      body: Container(
        color: backgroundColor,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            /// basic sliver app bar
            // SliverAppBar(
            //   pinned: true,
            //   expandedHeight: 300,
            //   flexibleSpace: FlexibleSpaceBar(
            //     title: Text('Amazon sparklers'),
            //     background: Image.asset('assets/images/77-775114_delivery-man-clipart-png-moto-delivery-png-vector.png',
            //     width: double.maxFinite,
            //     fit: BoxFit.cover,),
            //   ),
            // ),

            /// custom sliver app bar
            // SliverPersistentHeader(
            //   pinned: true,
            //   floating: false,
            //   delegate: CustomSilverHeaderDelegate(100, 250),
            // ),

            /// top selector
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: Dimension.width(20), right: Dimension.width(20), top: Dimension.height(30)),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Amazon sparklers',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: Dimension.width(20), color: Colors.black),
                            ),
                            const Icon(Icons.arrow_drop_down)
                          ],
                        ),
                        SizedBox(height: Dimension.height(8)),
                        Text('Terminal 3 potter road new york', style: TextStyle(fontSize: Dimension.width(16), color: Colors.grey)),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.wallet,
                      size: Dimension.width(45),
                      color: greenColor,
                    )
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: SizedBox(height: Dimension.height(30)),
            ),

            /// image gallery
            SliverToBoxAdapter(
              child: Container(
                // padding: EdgeInsets.symmetric(horizontal: Dimension.height(20)),
                height: Dimension.height(150),
                width: Dimension.width(300),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.height(12)),
                ),
                child: PageView.builder(
                    itemCount: featuredImages.length,
                    // controller: PageController(viewportFraction: .85),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: Dimension.width(10)),
                        margin: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: index.isOdd ? Colors.lightGreen.shade200 : Colors.green.shade200,
                          image: DecorationImage(
                            image: NetworkImage(featuredImages[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),
            ),

            SliverToBoxAdapter(
              child: SizedBox(height: Dimension.height(40)),
            ),

            /// search box
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.height(12)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        color: greenColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimension.height(10)),
                          borderSide: const BorderSide(width: 1.0, color: Colors.green)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimension.height(10)),
                          borderSide: const BorderSide(width: 1.0, color: Colors.white)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Dimension.height(20)),
                      )),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: SizedBox(height: Dimension.height(30)),
            ),

            /// category list
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.height(12)),
                  // color: Colors.green,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                        fontSize: Dimension.height(20),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: Dimension.height(20)),
                    Query(
                      options: QueryOptions(
                        document: gql(Queries.getAllCategories()), // this is the query string you just created
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

                        var categoryJson = result.data?['category'];

                        if (categoryJson == null) {
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

                        List<Category> categoryList = categoryJson.map<Category>((json) => Category.fromJson(json)).toList();

                        return Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            scrollDirection: Axis.horizontal,
                            mainAxisSpacing: Dimension.width(10),
                            crossAxisSpacing: Dimension.height(10),
                            childAspectRatio: .4,
                            children: List.generate(categoryList.length, (index) {
                              final category = categoryList[index];
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed(RouteHelper.getCategoryTab());
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(left: 2, right: 10, top: 3, bottom: 3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.all(Dimension.width(4)),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(Dimension.height(5)),
                                            child: Image.network(
                                              category.image,
                                              fit: BoxFit.cover,
                                              height: Dimension.width(50),
                                              width: Dimension.width(50),
                                            ),
                                          )),
                                      SizedBox(
                                        width: Dimension.width(5),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            category.name.split(' ').first,
                                            style: TextStyle(
                                                fontWeight: index.isOdd ? FontWeight.w800 : FontWeight.w400,
                                                fontSize: index.isOdd ? 13 : 14),
                                          ),
                                          const SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            category.name.split(' ').last,
                                            style: TextStyle(
                                                fontWeight: index.isEven ? FontWeight.w800 : FontWeight.w400,
                                                fontSize: index.isEven ? 13 : 14),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: SizedBox(height: Dimension.height(30)),
            ),

            /// popular text
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.height(12)),
                  // color: Colors.green,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(
                        fontSize: Dimension.height(20),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: Dimension.height(20),
                    ),
                  ],
                ),
              ),
            ),

            /// popular list
            Query(
                options: QueryOptions(
                  document: gql(Queries.getAllProducts()), // this is the query string you just created
                  fetchPolicy: FetchPolicy.cacheAndNetwork,
                  // pollInterval: const Duration(seconds: 10),
                ),
                builder: (QueryResult result, {VoidCallback? refetch, FetchMore? fetchMore}) {
                  if (result.hasException) {
                    return SliverToBoxAdapter(child: Text(result.exception.toString()));
                  }

                  if (result.isLoading) {
                    return const SliverToBoxAdapter(child: Text('Loading'));
                  }

                  List? productJson = result.data?['product'];

                  if (productJson == null || productJson.isEmpty) {
                    return const SliverToBoxAdapter(child: Text('No repositories'));
                  }

                  List<Product> productList = productJson.map((e) => Product.fromJson(e)).toList();

                  return SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                    sliver: SliverGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: Dimension.width(20),
                      crossAxisSpacing: Dimension.width(20),
                      childAspectRatio: .699,
                      children: List.generate(productList.length, (index) {
                        final item = productList[index];
                        return ProductItem(
                          cartDatabaseController: cartDatabaseController,
                          product: item,
                        );
                      }),
                    ),
                  );
                }),
            SliverToBoxAdapter(
              child: SizedBox(
                height: Dimension.height(30),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomSilverHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  final double minExtent;
  @override
  final double maxExtent;

  CustomSilverHeaderDelegate(this.minExtent, this.maxExtent);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/77-775114_delivery-man-clipart-png-moto-delivery-png-vector.png',
          fit: BoxFit.cover,
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black45],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [.5, 1.0],
            ),
          ),
        ),
        Positioned(
            left: Dimension.width(16),
            right: Dimension.width(16),
            bottom: Dimension.height(16),
            child: Text(
              'Lorem ipsome',
              style: TextStyle(
                fontSize: Dimension.height(32),
                color: Colors.white.withOpacity(
                  titleOpacity(shrinkOffset),
                ),
              ),
            ))
      ],
    );
  }

  double titleOpacity(double shrinkOffset) {
    return 1 - max(0.0, shrinkOffset) / maxExtent;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
