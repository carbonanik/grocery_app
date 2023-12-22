import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:get/get_utils/get_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/ui/widget/opps_no_data.dart';

import '../../../../provider/category/category_api_provider.dart';
import '../../../widget/category_item.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
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
                  child: const Icon(Icons.search),
                )
              ],
            ),
          ),
          Consumer(builder: (context, ref, child) {
            final asyncValue = ref.watch(getCategoriesProvider);

            if (asyncValue is AsyncError || (asyncValue is AsyncData && asyncValue.value == [])) {
                ref.invalidate(getCategoriesProvider);
            }

            return asyncValue.map(
              data: (data) => data.value.isEmpty
                  ? const Expanded(child: Center(child: OopsNoData()))
                  : Expanded(
                      child: ListView.builder(
                          itemCount: data.value.length,
                          itemBuilder: (context, index) {
                            final category = data.value[index];
                            return CategoryItem(category: category);
                          })),
              error: (error) => const Expanded(
                child: Center(
                  child: OopsNoData(),
                ),
              ),
              loading: (loading) => const CircularProgressIndicator(),
            );
          })
        ],
      ),
    );
  }
}
