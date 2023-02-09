import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:instant_grrocery_delivery/controller/cart_database_controller.dart';

import '../../controller/favourite_controller.dart';
import '../../core/queries.dart';
import '../../di/locator.dart';
import '../../main.dart';
import '../../model/product.dart';
import '../../util/dimension.dart';
import '../widget/product_item.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favouriteController = locator.get<FavouriteController>();
    final cartDatabaseController = locator.get<CartDatabaseController>();

    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: CustomScrollView(
          slivers: [
            /// custom sliver app bar

            SliverToBoxAdapter(
              child: SizedBox(height: Dimension.height(10)),
            ),

            /// popular list
            Query(
              options: QueryOptions(
                document: gql(Queries.getProductByIds(
                    favouriteController.getFavouriteList())),
                fetchPolicy: FetchPolicy.cacheAndNetwork,
                // pollInterval: const Duration(seconds: 10),
              ),
              builder: (QueryResult result,
                  {VoidCallback? refetch, FetchMore? fetchMore}) {
                if (result.hasException) {
                  return SliverToBoxAdapter(
                      child: Text(result.exception.toString()));
                }

                if (result.isLoading) {
                  return const SliverToBoxAdapter(child: Text('Loading'));
                }

                List? productJson = result.data?['product'];

                if (productJson == null || productJson.isEmpty) {
                  return const SliverToBoxAdapter(
                      child: Text('No repositories'));
                }

                List<Product> productList =
                    productJson.map((e) => Product.fromJson(e)).toList();

                return SliverPadding(
                  padding:
                      EdgeInsets.symmetric(horizontal: Dimension.width(20)),
                  sliver: SliverGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: Dimension.height(10),
                    crossAxisSpacing: Dimension.width(10),
                    childAspectRatio: .70,
                    children: List.generate(productList.length, (index) {
                      final item = productList[index];
                      return ProductItem(
                        product: item,
                        // cartDatabaseController: cartDatabaseController,
                      );
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
