import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/ui/widget/opps_no_data.dart';

import '../../../../provider/category/category_api_provider.dart';
import '../../../widget/category_item.dart';
import '../../../widget/home_app_bar.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const HomeAppBar(title: 'Categories'),
      body: Consumer(
        builder: (context, ref, child) {
          final asyncValue = ref.watch(getCategoriesProvider);

          if (asyncValue is AsyncError ||
              (asyncValue is AsyncData && asyncValue.value == [])) {
            ref.invalidate(getCategoriesProvider);
          }

          return asyncValue.map(
            data: (data) => data.value.isEmpty
                ? const Center(child: OopsNoData())
                : ListView.builder(
                    itemCount: data.value.length,
                    itemBuilder: (context, index) {
                      final category = data.value[index];
                      return CategoryItem(category: category);
                    },
                  ),
            error: (error) => const Center(child: OopsNoData()),
            loading: (loading) =>
                const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
