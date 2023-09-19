import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/impl/category_api_impl.dart';
import 'package:instant_grrocery_delivery/model/category/category.dart';

final categoryApiProvider = Provider((ref) => CategoryApiImpl());

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
