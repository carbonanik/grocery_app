import 'package:instant_grrocery_delivery/model/product.dart';

abstract class ProductApi {
  Future<List<Product>> getProducts();

  Future<Product> getProductsById(int productId);

  Future<bool> createProduct(Map<String, dynamic> productData);

  Future<bool> updateProduct(int productId, Map<String, dynamic> productData);

  Future<bool> deleteProduct(int productId);

  Future<List<Product>> getFavoriteProducts(String idsJson);
}
