import 'dart:convert';

import 'package:instant_grrocery_delivery/features/product/data/source/product_api.dart';
import 'package:instant_grrocery_delivery/features/product/domain/product_repository.dart';
import 'package:instant_grrocery_delivery/features/product/data/model/product.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductApi _productApi;

  ProductRepositoryImpl(this._productApi);

  @override
  Future<List<Product>> getProducts() => _productApi.getProducts();

  @override
  Future<Product> getProductById(int id) => _productApi.getProductsById(id);

  @override
  Future<List<Product>> getFavoriteProducts(List<int> ids) {
    // Adapter logic: API expects JSON string of IDs
    return _productApi.getFavoriteProducts(json.encode(ids));
  }

  @override
  Future<List<Product>> getPopularProducts() =>
      _productApi.getPopularProducts();

  @override
  Future<List<Product>> getSimilarProducts(int productId) =>
      _productApi.getSimilarProducts(productId);

  @override
  Future<List<Product>> getFrequentlyBoughtTogether(List<int> cartProductIds) =>
      _productApi.getFrequentlyBoughtTogether(cartProductIds);
}

