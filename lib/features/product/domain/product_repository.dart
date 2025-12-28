import 'package:instant_grrocery_delivery/features/product/data/model/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();
  Future<Product> getProductById(int id);
  Future<List<Product>> getFavoriteProducts(List<int> ids);
  Future<List<Product>> getPopularProducts();
  Future<List<Product>> getSimilarProducts(int productId);
  Future<List<Product>> getFrequentlyBoughtTogether(List<int> cartProductIds);
}

