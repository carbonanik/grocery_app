// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:instant_grrocery_delivery/data_source/api/product_api.dart';

import '../model/product.dart';
import 'favorite_provider.dart';

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

final getFavoriteProducts =
    FutureProvider.family<List<Product>, ProductIds>((ref, favoriteIds) async {
  // print("provider");
  // ref.notifyListeners();
  // final favoriteDataModel = ref.read(favoriteDataModelProvider);
  // final favoriteIds = favoriteDataModel.getOnlyFavorite();
  // print(favoriteIds);
  final httpClient = ref.read(productApiProvider);
  return httpClient.getFavoriteProducts(favoriteIds.ids);
});

class ProductIds {
  List<int> ids;

  ProductIds({
    required this.ids,
  });

  @override
  bool operator ==(covariant ProductIds other) {
    if (identical(this, other)) return true;

    return listEquals(other.ids, ids);
  }

  @override
  int get hashCode => ids.hashCode;
}
