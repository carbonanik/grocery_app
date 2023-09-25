import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/impl/product_api_impl.dart';
import 'package:instant_grrocery_delivery/data_source/api/mock_impl/product_api_mock_impl.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';


final productApiProvider = Provider((ref) => ProductApiMockImpl()); // todo mock

final getProductsProvider = FutureProvider<List<Product>>((ref) async {
  final httpClient = ref.read(productApiProvider);
  return httpClient.getPopularProducts();
});

final getProductByIdProvider =
    FutureProvider.family<Product, int>((ref, productId) async {
  final httpClient = ref.read(productApiProvider);
  return httpClient.getProductsById(productId);
});

final getFavoriteProducts =
    FutureProvider.family<List<Product>, String>((ref, favoriteIds) async {
  final httpClient = ref.read(productApiProvider);
  return httpClient.getFavoriteProducts(favoriteIds);
});
