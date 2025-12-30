import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/core/dio_client.dart';
import 'package:instant_grrocery_delivery/features/auth/data/auth_repository_impl.dart';
import 'package:instant_grrocery_delivery/features/auth/data/mock_auth_repository.dart';
import 'package:instant_grrocery_delivery/features/auth/data/source/auth_api_impl_dio.dart';
import 'package:instant_grrocery_delivery/core/api/paths.dart';
import 'package:instant_grrocery_delivery/features/auth/domain/app_user.dart';
import 'package:instant_grrocery_delivery/features/auth/domain/auth_repository.dart';
import 'package:instant_grrocery_delivery/features/auth/presentation/provider/auth_local_provider.dart';

// Toggle this to switch between Mock and Real data
const bool USE_MOCK_AUTH = true;

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final auth = USE_MOCK_AUTH
      ? MockAuthRepository()
      : AuthRepositoryImpl(
          AuthApiImpl(DioClient(baseUrl: Paths.baseUrl)),
          ref.watch(authLocalProvider),
        );
  ref.onDispose(() => auth.dispose());
  return auth;
});

final authStateChangesProvider = StreamProvider.autoDispose<AppUser?>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.authStateChanges();
});
