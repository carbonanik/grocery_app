import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/impl/category_api_impl.dart';
import 'package:instant_grrocery_delivery/data_source/api/mock_impl/category_api_mock_impl.dart';
import 'package:instant_grrocery_delivery/model/category/category.dart';

final categoryApiProvider = Provider((ref) => CategoryApiMockImpl()); // todo remove mock impl for category api

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
