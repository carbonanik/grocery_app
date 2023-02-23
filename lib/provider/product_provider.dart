import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/product_api.dart';

import '../model/product.dart';

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
