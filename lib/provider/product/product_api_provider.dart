import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/mock_impl/product_api_mock_impl.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';
import 'package:instant_grrocery_delivery/provider/cart/cart_hive_notifier_provider.dart';
import 'package:instant_grrocery_delivery/provider/favorite/favorite_hive_provider.dart';

final productApiProvider = Provider((ref) => ProductApiMockImpl()); // todo mock

final getProductsProvider = FutureProvider<List<Product>>((ref) async {
  final api = ref.read(productApiProvider);
  return api.getProducts();
});

final getProductByIdProvider = FutureProvider.family<Product, int>((ref, productId) async {
  final api = ref.read(productApiProvider);
  return api.getProductsById(productId);
});

final getFavoriteProductsProvider = FutureProvider<List<Product>>((ref) async {
  final api = ref.read(productApiProvider);
  final favoriteDataModel = ref.watch(favoriteProvider);
  final ids = favoriteDataModel.getFavoriteIdList();
  return api.getFavoriteProducts(json.encode(ids));
});

final getPopularProductProvider = FutureProvider<List<Product>>((ref) async {
  final api = ref.read(productApiProvider);
  return api.getPopularProducts();
});

final getSimilarProductProvider = FutureProvider.family<List<Product>, int>((ref, productId) async {
  final api = ref.read(productApiProvider);
  return api.getSimilarProducts(productId);
});

final getFrequentlyBoughtTogetherProductProvider = FutureProvider<List<Product>>((ref) async {
  final api = ref.read(productApiProvider);
  final ids = ref.read(cartProvider).cartList.keys.toList();
  return api.getFrequentlyBoughtTogether(ids);
});
