import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/category_api.dart';
import 'package:instant_grrocery_delivery/model/category.dart';

final categoryApiProvider = Provider((ref) => CategoryApi());

final getCategoriesProvider = FutureProvider<List<Category>>((ref) async {
  final httpClient = ref.read(categoryApiProvider);
  return httpClient.getCategories();
});

final getCategoriesByIdWithProductProvider =
    FutureProvider.family<Category, int>(
  (ref, categoryId) async {
    final httpClient = ref.read(categoryApiProvider);
    return httpClient.getCategoriesByIdWithProduct(categoryId);
  },
);
