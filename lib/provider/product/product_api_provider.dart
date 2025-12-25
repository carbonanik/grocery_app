import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/data/repository/mock_product_repository.dart';
import 'package:instant_grrocery_delivery/data/repository/product_repository_impl.dart';
import 'package:instant_grrocery_delivery/data_source/api/impl/product_api_impl.dart';
import 'package:instant_grrocery_delivery/domain/repository/product_repository.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';
import 'package:instant_grrocery_delivery/provider/cart/cart_provider.dart';
import 'package:instant_grrocery_delivery/provider/favorite/favorite_hive_provider.dart';

// Toggle this to switch between Mock and Real data
const bool USE_MOCK_DATA = true;

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  if (USE_MOCK_DATA) {
    return MockProductRepository();
  } else {
    // Inject dependencies for Real Repository
    return ProductRepositoryImpl(ProductApiImpl());
  }
});

// Deprecated: Kept for backward compatibility if needed, but aliased to repository
// final productApiProvider = ... // Removed to force usage of repository

final getProductsProvider = FutureProvider<List<Product>>((ref) async {
  final repository = ref.read(productRepositoryProvider);
  return repository.getProducts();
});

final getProductByIdProvider = FutureProvider.family<Product, int>((
  ref,
  productId,
) async {
  final repository = ref.read(productRepositoryProvider);
  return repository.getProductById(productId);
});

final getFavoriteProductsProvider = FutureProvider<List<Product>>((ref) async {
  final repository = ref.read(productRepositoryProvider);
  final favoriteDataModel = ref.watch(favoriteProvider);
  final ids = favoriteDataModel.getFavoriteIdList();

  // Note: Repository now accepts List<int> directly, ensuring better type safety.
  // However, the original API might have expected JSON string.
  // The Repository interface defined getFavoriteProducts(List<int> ids).
  // MockRepository implements it.
  // ProductRepositoryImpl impl converts it to JSON string for the legacy API.
  return repository.getFavoriteProducts(ids);
});

final getPopularProductProvider = FutureProvider<List<Product>>((ref) async {
  final repository = ref.read(productRepositoryProvider);
  return repository.getPopularProducts();
});

final getSimilarProductProvider = FutureProvider.family<List<Product>, int>((
  ref,
  productId,
) async {
  final repository = ref.read(productRepositoryProvider);
  return repository.getSimilarProducts(productId);
});

final getFrequentlyBoughtTogetherProductProvider =
    FutureProvider<List<Product>>((ref) async {
      final repository = ref.read(productRepositoryProvider);
      final ids = ref.read(cartProvider).cartList.keys.toList();
      return repository.getFrequentlyBoughtTogether(ids);
    });
