import 'dart:math';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../controller/cart_database_controller.dart';
import '../../di/locator.dart';
import '../widget/category_item.dart';
import '../../util/dimension.dart';
import '../../core/queries.dart';
import '../../main.dart';
import '../../model/category.dart';
import '../../model/product.dart';
import '../widget/product_item.dart';

class CategoryProductList extends StatelessWidget {
  const CategoryProductList({Key? key, required this.selectedCategoryId}) : super(key: key);

  final int selectedCategoryId;

  @override
  Widget build(BuildContext context) {

    final cartDatabaseController = locator.get<CartDatabaseController>();

    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: CustomScrollView(
          slivers: [
            /// custom sliver app bar
            SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: _CategorySilverHeaderDelegate(100, 100),
            ),

            SliverToBoxAdapter(
              child: SizedBox(height: Dimension.height(10)),
            ),

            /// popular list
            Query(
              options: QueryOptions(
                document: gql(Queries.getProductByCategoryId(selectedCategoryId)), // this is the query string you just created
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
                    mainAxisSpacing: Dimension.height(10),
                    crossAxisSpacing: Dimension.width(10),
                    childAspectRatio: .70,
                    children: List.generate(productList.length, (index) {
                      final item = productList[index];
                      return ProductItem(product: item, cartDatabaseController: cartDatabaseController,);
                    }),
                  ),
                );
              },
            ),
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

class _CategorySilverHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  final double minExtent;
  @override
  final double maxExtent;

  _CategorySilverHeaderDelegate(this.minExtent, this.maxExtent);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  final TextEditingController textEditingController = TextEditingController();

                  return Dialog(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: Dimension.width(195),
                                child: TextField(
                                  controller: textEditingController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                      hintText: 'Browse Category',
                                      hintStyle: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black26
                                      )
                                  ),
                                ),
                              ),
                              const Icon(Icons.clear, color: Colors.grey),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                                height: Dimension.height(30),
                                width: 1,
                                color: Colors.black12,
                              ),
                              const Icon(Icons.search, color: Colors.grey,)
                            ],
                          ),
                        ),

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
                            List? categoryJson = result.data?['category'];
                            if (categoryJson == null || categoryJson.isEmpty) {
                              return const Text('No repositories');
                            }
                            List<Category> categoryList = categoryJson.map((e) => Category.fromJson(e)).toList();
                            return SizedBox(
                              height: Dimension.height(200),
                              child: ListView.builder(
                                itemCount: categoryList.length,
                                itemBuilder: (context, index) {
                                  final item = categoryList[index];
                                  return CategoryItem(category: item);
                                },
                              ),
                            );
                          },
                          // child: Expanded(
                          //     child: ListView.builder(
                          //         itemCount: Category.categories.length,
                          //         itemBuilder: (context, index) {
                          //           return Padding(
                          //             padding: const EdgeInsets.all(8.0),
                          //             child: Padding(
                          //               padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                          //               child: Text(Category.categories[index].name, style: TextStyle(fontWeight: FontWeight.w500),),
                          //             ),
                          //           );
                          //         })),
                        )
                      ],
                    ),
                  );
                });
          },
          child: Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
            margin: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
            padding: EdgeInsets.symmetric(horizontal: Dimension.height(20), vertical: Dimension.width(5)),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Browse Category',
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(height: Dimension.height(2)),
                    Text('Fruits & Vegetable',
                        style: TextStyle(fontSize: Dimension.height(16), fontWeight: FontWeight.bold, color: Colors.black)),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.arrow_drop_up,
                      size: 14,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 14,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                  height: Dimension.height(30),
                  width: 1,
                  color: Colors.black12,
                ),
                const Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),
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
