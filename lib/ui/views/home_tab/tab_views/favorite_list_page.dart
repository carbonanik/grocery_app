import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/provider/product/product_api_provider.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/ui/widget/product_item.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

class FavoriteListPage extends StatelessWidget {
  const FavoriteListPage({Key? key}) : super(key: key);

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
              final asyncValue = ref.watch(
                getFavoriteProductsProvider,
              );

              return asyncValue.map(
                data: (data) => data.value.isEmpty
                    ? SliverFillRemaining(
                        child: Center(
                          child: Text(
                            "No Favorites",
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : SliverPadding(
                        padding: EdgeInsets.only(
                          left: context.w(20),
                          right: context.w(20),
                          top: context.w(20),
                        ),
                        sliver: SliverGrid.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: context.h(10),
                          crossAxisSpacing: context.w(10),
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
                  return SliverToBoxAdapter(
                    child: Expanded(
                      child: Center(
                        child: Text(
                          "No Favorites",
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                loading: (loading) => const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
