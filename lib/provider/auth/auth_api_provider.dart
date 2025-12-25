import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/core/dio_client.dart';
import 'package:instant_grrocery_delivery/data/repository/auth_repository_impl.dart';
import 'package:instant_grrocery_delivery/data/repository/mock_auth_repository.dart';
import 'package:instant_grrocery_delivery/data_source/api/impl_dio/auth_api_impl.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/paths.dart';
import 'package:instant_grrocery_delivery/domain/repository/auth_repository.dart';

// Toggle this to switch between Mock and Real data
const bool USE_MOCK_AUTH = true;

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  if (USE_MOCK_AUTH) {
    return MockAuthRepository();
  } else {
    return AuthRepositoryImpl(AuthApiImpl(DioClient(baseUrl: Paths.baseUrl)));
  }
});
