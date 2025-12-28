import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/core/dio_client.dart';
import 'package:instant_grrocery_delivery/features/auth/data/auth_repository_impl.dart';
import 'package:instant_grrocery_delivery/features/auth/data/mock_auth_repository.dart';
import 'package:instant_grrocery_delivery/features/auth/data/source/auth_api_impl_dio.dart';
import 'package:instant_grrocery_delivery/core/api/paths.dart';
import 'package:instant_grrocery_delivery/features/auth/domain/auth_repository.dart';

// Toggle this to switch between Mock and Real data
const bool USE_MOCK_AUTH = true;

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  if (USE_MOCK_AUTH) {
    return MockAuthRepository();
  } else {
    return AuthRepositoryImpl(AuthApiImpl(DioClient(baseUrl: Paths.baseUrl)));
  }
});

