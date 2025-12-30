import 'package:instant_grrocery_delivery/features/auth/domain/app_user.dart';
import 'package:instant_grrocery_delivery/features/auth/domain/auth_repository.dart';
import 'package:instant_grrocery_delivery/features/auth/data/source/auth_api.dart';
import 'package:instant_grrocery_delivery/features/auth/data/source/auth_local.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi _authApi;
  final AuthLocal _authLocal;

  AuthRepositoryImpl(this._authApi, this._authLocal);

  @override
  Stream<AppUser?> authStateChanges() => throw UnimplementedError();

  @override
  AppUser? get currentUser => throw UnimplementedError();

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    throw UnimplementedError();
  }

  @override
  Future<void> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    await _authLocal.removeAuthUser();
  }

  @override
  void dispose() {
    // No-op for now
  }
}
