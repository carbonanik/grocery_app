import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/features/auth/domain/auth_service.dart';
import 'package:instant_grrocery_delivery/features/product/domain/product_service.dart';
import 'package:instant_grrocery_delivery/features/auth/presentation/provider/auth_api_provider.dart';
import 'package:instant_grrocery_delivery/features/auth/presentation/provider/auth_local_provider.dart';
import 'package:instant_grrocery_delivery/features/product/presentation/provider/product_api_provider.dart';

final authServiceProvider = Provider<AuthService>((ref) {
  final authRepository = ref.read(authRepositoryProvider);
  final authLocal = ref.read(authLocalProvider);
  return AuthService(authRepository, authLocal);
});

final productServiceProvider = Provider<ProductService>((ref) {
  final productRepository = ref.read(productRepositoryProvider);
  return ProductService(productRepository);
});

