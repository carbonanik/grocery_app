import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/provider/product_provider.dart';

import '../../main.dart';
import '../../provider/category_provider.dart';
import '../../provider/favorite_provider.dart';
import '../../util/dimension.dart';
import '../widget/category_item.dart';
import '../widget/product_item.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Container(
  //         color: backgroundColor,
  //         child: Consumer(
  //           builder: (context, ref, child) {
  //             // final favoriteDataModel = ref.watch(favoriteDataModelProvider);
  //             // final favoriteIds = favoriteDataModel.getOnlyFavorite();

  //             final asyncValue = ref.watch(getFavoriteProducts([1, 2]));
  //             print("build call");

  //             return asyncValue.map(
  // data: (data) => SliverPadding(
  //   padding: EdgeInsets.symmetric(
  //     horizontal: Dimension.width(20),
  //   ),
  //   sliver: SliverGrid.count(
  //     crossAxisCount: 2,
  //     mainAxisSpacing: Dimension.height(10),
  //     crossAxisSpacing: Dimension.width(10),
  //     childAspectRatio: .70,
  //     children: List.generate(data.value.length, (index) {
  //       final item = data.value[index];
  //       return ProductItem(
  //         product: item,
  //         // cartDatabaseController: cartDatabaseController,
  //       );
  //     }),
  //   ),
  // ),
  //               error: (error) =>
  //                   const SliverToBoxAdapter(child: Text("error")),
  //               loading: (loading) =>
  //                   const SliverToBoxAdapter(child: Text('Loading')),
  //             );
  //           },
  //         )
  // CustomScrollView(
  //   slivers: [
  //     /// custom sliver app bar

  //     SliverToBoxAdapter(
  //       child: SizedBox(height: Dimension.height(10)),
  //     ),
  //     Consumer(
  //       builder: (context, ref, child) {
  //         // final favoriteDataModel = ref.watch(favoriteDataModelProvider);
  //         // final favoriteIds = favoriteDataModel.getOnlyFavorite();

  //         final asyncValue = ref.watch(getFavoriteProducts([1, 2]));
  //         print("build call");

  //         return asyncValue.map(
  //           data: (data) => SliverPadding(
  //             padding: EdgeInsets.symmetric(
  //               horizontal: Dimension.width(20),
  //             ),
  //             sliver: SliverGrid.count(
  //               crossAxisCount: 2,
  //               mainAxisSpacing: Dimension.height(10),
  //               crossAxisSpacing: Dimension.width(10),
  //               childAspectRatio: .70,
  //               children: List.generate(data.value.length, (index) {
  //                 final item = data.value[index];
  //                 return ProductItem(
  //                   product: item,
  //                   // cartDatabaseController: cartDatabaseController,
  //                 );
  //               }),
  //             ),
  //           ),
  //           error: (error) =>
  //               const SliverToBoxAdapter(child: Text("error")),
  //           loading: (loading) =>
  //               const SliverToBoxAdapter(child: Text('Loading')),
  //         );
  //       },
  //     ),

  //     SliverToBoxAdapter(
  //       child: SizedBox(
  //         height: Dimension.height(30),
  //       ),
  //     )
  //   ],
  // ),
  //         ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final rnd = Random().nextInt(9999);
    return Container(
      color: backgroundColor,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  const Text(
                    'Favorites',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(Icons.search))
                ],
              ),
            ),
          ),
          Consumer(
            builder: (context, ref, child) {
              final favoriteDataModel = ref.watch(favoriteDataModelProvider);
              final ids = favoriteDataModel.getOnlyFavorite();
              final asyncValue =
                  ref.watch(getFavoriteProducts(json.encode(ids)));
              print("build");

              return asyncValue.map(
                data: (data) => SliverPadding(
                  padding: EdgeInsets.only(
                    left: Dimension.width(20),
                    right: Dimension.width(20),
                    top: Dimension.width(20),
                  ),
                  sliver: SliverGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: Dimension.height(10),
                    crossAxisSpacing: Dimension.width(10),
                    childAspectRatio: .70,
                    children: List.generate(data.value.length, (index) {
                      final item = data.value[index];
                      return ProductItem(
                        product: item,
                        // cartDatabaseController: cartDatabaseController,
                      );
                    }),
                  ),
                ),
                error: (error) {
                  print(error);
                  return const SliverToBoxAdapter(child: Text("error"));
                },
                loading: (loading) =>
                    const SliverToBoxAdapter(child: Text("loading")),
              );
            },
          )
        ],
      ),
    );
  }
}
