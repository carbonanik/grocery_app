import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/category_api.dart';
import 'package:instant_grrocery_delivery/data_source/api/product_api.dart';
import 'package:instant_grrocery_delivery/model/category.dart';

import '../model/product.dart';

// ============================= product =========================================

final productApiProvider = Provider((ref) => ProductApi());

final getProductsProvider = FutureProvider<List<Product>>((ref) async {
  final httpClient = ref.read(productApiProvider);
  return httpClient.getProducts();
});

final getProductByIdProvider =
    FutureProvider.family<Product, int>((ref, productId) async {
  final httpClient = ref.read(productApiProvider);
  return httpClient.getProductsById(productId);
});

// =========================== category ==========================================

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
