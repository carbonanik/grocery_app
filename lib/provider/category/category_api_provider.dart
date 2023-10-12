import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/category_api.dart';
import 'package:instant_grrocery_delivery/data_source/api/impl/category_api_impl.dart';
import 'package:instant_grrocery_delivery/data_source/api/mock_impl/category_api_mock_impl.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/using_api_impl_for.dart';
import 'package:instant_grrocery_delivery/model/category/category.dart';
import 'package:instant_grrocery_delivery/provider/api_server_provider.dart';

final categoryApiProvider = Provider<CategoryApi>((ref) {
  final usingApi = ref.read(apiServerProvider);
  switch (usingApi) {
    case UsingApiImplFor.fastApiServer:
      throw UnimplementedError();
    case UsingApiImplFor.strapiServer:
      return CategoryApiImpl();
    case UsingApiImplFor.mockServer:
      return CategoryApiMockImpl();
  }
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
