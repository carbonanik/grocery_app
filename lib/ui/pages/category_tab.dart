import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../core/queries.dart';
import '../../main.dart';
import '../../model/category.dart';
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
      body: SafeArea(
        child: Container(
          child: Query(
            options: QueryOptions(
              document: gql(Queries.getAllCategories()), // this is the query string you just created
              fetchPolicy: FetchPolicy.cacheAndNetwork,
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

              return SideTab(
                backgroundColor: backgroundColor,
                tabList: categoryList.map((e) => Tab(text: e.name)).toList(),
                tabViewList: categoryList.map((e) => CategoryProductList(selectedCategoryId: e.id)).toList(),
                preSelectedTab: preSelectedTab,
                leading: Container(
                  height: Dimension.height(40),
                  width: Dimension.width(40),
                  margin: EdgeInsets.only(top: Dimension.height(40), bottom: Dimension.height(10)),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimension.width(25)), color: greenColor),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
