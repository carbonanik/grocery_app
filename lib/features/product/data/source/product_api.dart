import 'package:instant_grrocery_delivery/features/product/data/model/product.dart';

abstract class ProductApi {
  Future<List<Product>> getProducts();

  Future<List<Product>> getPopularProducts();

  Future<Product> getProductsById(int productId);

  Future<List<Product>> getSimilarProducts(int productId);

  Future<List<Product>> getFrequentlyBoughtTogether(List<int> ids);

  Future<bool> createProduct(Map<String, dynamic> productData);

  Future<bool> updateProduct(int productId, Map<String, dynamic> productData);

  Future<bool> deleteProduct(int productId);

  Future<List<Product>> getFavoriteProducts(String idsJson);
}

