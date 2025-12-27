import 'package:instant_grrocery_delivery/domain/repository/product_repository.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';

class ProductService {
  final ProductRepository _productRepository;

  ProductService(this._productRepository);

  Future<List<Product>> getProducts() {
    return _productRepository.getProducts();
  }

  Future<Product> getProductById(int id) {
    return _productRepository.getProductById(id);
  }

  Future<List<Product>> getFavoriteProducts(List<int> ids) {
    return _productRepository.getFavoriteProducts(ids);
  }

  Future<List<Product>> getPopularProducts() {
    return _productRepository.getPopularProducts();
  }

  Future<List<Product>> getSimilarProducts(int productId) {
    return _productRepository.getSimilarProducts(productId);
  }

  Future<List<Product>> getFrequentlyBoughtTogether(List<int> cartProductIds) {
    return _productRepository.getFrequentlyBoughtTogether(cartProductIds);
  }
}
