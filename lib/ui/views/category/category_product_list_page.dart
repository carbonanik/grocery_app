import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';

import '../../../main.dart';
import '../../../provider/category/category_api_provider.dart';
import '../../../util/dimension.dart';
import '../../widget/category_item.dart';
import '../../widget/product_item.dart';

@RoutePage()
class CategoryProductListPage extends StatelessWidget {
  const CategoryProductListPage({
    Key? key,
    @PathParam("category-id") required this.selectedCategoryId,
  }) : super(key: key);

  final int selectedCategoryId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: CustomScrollView(
          slivers: [
            /// custom sliver app bar
            SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: _CategorySilverHeaderDelegate(
                100,
                100,
                selectedCategoryId: selectedCategoryId,
              ),
            ),

            // SliverToBoxAdapter(
            //   child: SizedBox(height: context.h(10)),
            // ),

            /// popular list
            Consumer(
              builder: (context, ref, _) {
                final asyncValue = ref.watch(getCategoriesByIdWithProductProvider(selectedCategoryId));

                return asyncValue.map(
                  data: (data) => SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                    sliver: SliverGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: context.h(10),
                      crossAxisSpacing: context.w(10),
                      childAspectRatio: .70,
                      children: List.generate(data.value.products?.length ?? 0, (index) {
                        final item = data.value.products![index];
                        return ProductItem(
                          product: item,
                        );
                      }),
                    ),
                  ),
                  error: (_) => const SliverToBoxAdapter(
                    child: Center(
                      child: Text("Error"),
                    ),
                  ),
                  loading: (_) => const SliverToBoxAdapter(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                );
              },
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: context.h(30),
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

  int selectedCategoryId;

  _CategorySilverHeaderDelegate(this.minExtent, this.maxExtent, {required this.selectedCategoryId});

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
                          padding: EdgeInsets.symmetric(horizontal: context.w(20)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: context.w(195),
                                child: TextField(
                                  controller: textEditingController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Browse Category',
                                    hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
                                  ),
                                ),
                              ),
                              const Icon(Icons.clear, color: Colors.grey),
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: context.w(20),
                                ),
                                height: context.h(30),
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
                        Consumer(
                          builder: ((context, ref, child) {
                            final asyncValue = ref.watch(getCategoriesProvider);
                            return asyncValue.map(
                              data: (data) => Expanded(
                                child: SizedBox(
                                  height: context.h(200),
                                  child: ListView.builder(
                                    itemCount: data.value.length,
                                    itemBuilder: (context, index) {
                                      final item = data.value[index];
                                      return CategoryItem(category: item);
                                    },
                                  ),
                                ),
                              ),
                              error: (error) => const Text(""),
                              loading: (error) => const CircularProgressIndicator(),
                            );
                          }),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            margin: EdgeInsets.symmetric(horizontal: context.w(20)),
            padding: EdgeInsets.symmetric(
              horizontal: context.h(16),
              vertical: context.w(5),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Browse Category',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: context.h(2)),
                    Consumer(builder: (context, ref, child) {
                      final asyncValue = ref.watch(
                        getCategoriesByIdWithProductProvider(
                          selectedCategoryId,
                        ),
                      );

                      return asyncValue.map(
                        data: (data) => SizedBox(
                          width: 160,
                          child: Text(
                            data.value.name,
                            style: TextStyle(
                              fontSize: context.h(16),
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        error: (_) => const Text("Error"),
                        loading: (_) => const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }),
                  ],
                ),
                const Spacer(),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                  margin: EdgeInsets.symmetric(horizontal: context.w(10)),
                  height: context.h(30),
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
