import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:instant_grrocery_delivery/main.dart';

import '../../core/queries.dart';
import '../../model/category.dart';
import '../widget/category_item.dart';

class SelectCategory extends StatelessWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                const Text(
                  'Categories',
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

              return  Expanded(
                  child: ListView.builder(
                      itemCount: categoryList.length,
                      itemBuilder: (context, index) {
                        final category = categoryList[index];
                        return CategoryItem(category: category);
                      }));
            },
          )
        ],
      ),
    );
  }
}
