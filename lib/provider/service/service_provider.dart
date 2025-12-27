import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/application/service/auth_service.dart';
import 'package:instant_grrocery_delivery/application/service/product_service.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_api_provider.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_local_provider.dart';
import 'package:instant_grrocery_delivery/provider/product/product_api_provider.dart';

final authServiceProvider = Provider<AuthService>((ref) {
  final authRepository = ref.read(authRepositoryProvider);
  final authLocal = ref.read(authLocalProvider);
  return AuthService(authRepository, authLocal);
});

final productServiceProvider = Provider<ProductService>((ref) {
  final productRepository = ref.read(productRepositoryProvider);
  return ProductService(productRepository);
});
