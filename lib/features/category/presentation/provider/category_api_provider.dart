import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/features/category/data/source/category_api.dart';
import 'package:instant_grrocery_delivery/features/category/data/source/category_api_impl.dart';
import 'package:instant_grrocery_delivery/features/category/data/model/category.dart';

final categoryApiProvider = Provider<CategoryApi>((ref) {
  return CategoryApiImpl();
});

final getCategoriesProvider = FutureProvider<List<Category>>((ref) async {
  return ref.read(categoryApiProvider).getCategories();
});

final getCategoriesByIdWithProductProvider =
    FutureProvider.family<Category, int>(
  (ref, categoryId) async {
    return ref
        .read(categoryApiProvider)
        .getCategoriesByIdWithProduct(categoryId);
  },
);

