import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/provider/product_provider.dart';

import '../../main.dart';
import '../../util/dimension.dart';
import '../widget/side_tab.dart';
import 'category_product_list.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({Key? key, this.preSelectedTab = 0}) : super(key: key);

  final int preSelectedTab;

  @override
  Widget build(BuildContext context) {
    // final tabs = [
    //   const Tab(text: 'Summer Fruits'),
    //   const Tab(text: 'Fresh Fruits'),
    //   const Tab(text: 'Fresh Vegetable'),
    //   const Tab(text: 'Herbs & Seasoning'),
    //   const Tab(text: 'Organic Fruits'),
    // ];
    //
    // final pages = [
    //   const CategoryProductList(),
    //   const CategoryProductList(),
    //   const CategoryProductList(),
    //   const CategoryProductList(),
    //   const CategoryProductList()
    // ];

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(child: Consumer(builder: (context, ref, child) {
        final asyncValue = ref.watch(getCategoriesProvider);

        return asyncValue.map(
          data: (data) => SideTab(
            backgroundColor: backgroundColor,
            tabList: data.value.map((e) => Tab(text: e.name)).toList(),
            tabViewList: data.value.map((e) => //Container()
                CategoryProductList(selectedCategoryId: e.id)).toList(),
            preSelectedTab: 0,
            leading: CircleAvatar(
              backgroundColor: greenColor,
            ),
          ),
          error: (error) => Text(error.error.toString()),
          loading: (loading) => const CircularProgressIndicator(),
        );
      })),
    );
  }
}
