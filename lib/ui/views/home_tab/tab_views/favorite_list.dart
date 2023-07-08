import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/provider/product/product_api_provider.dart';

import '../../../../main.dart';
import '../../../../provider/favorite/favorite_hive_provider.dart';
import '../../../../util/dimension.dart';
import '../../../widget/product_item.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
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
              final favoriteDataModel = ref.watch(favoriteProvider);
              final ids = favoriteDataModel.getWhereFavoriteTrue();
              final asyncValue = ref.watch(
                getFavoriteProducts(json.encode(ids)),
              );

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
                    children: List.generate(
                      data.value.length,
                      (index) {
                        final item = data.value[index];
                        return ProductItem(
                          product: item,
                        );
                      },
                    ),
                  ),
                ),
                error: (error) {
                  return const SliverToBoxAdapter(
                    child: Text("error"),
                  );
                },
                loading: (loading) => const SliverToBoxAdapter(
                  child: Text("loading"),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
