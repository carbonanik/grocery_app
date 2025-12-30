import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:instant_grrocery_delivery/features/auth/domain/app_user.dart';
import 'package:instant_grrocery_delivery/core/result_value.dart';
import 'package:instant_grrocery_delivery/features/auth/presentation/provider/auth_api_provider.dart';

class AuthController extends StateNotifier<ResultValue<AppUser?>> {
  AuthController(this.ref) : super(const ResultValue.empty());

  final Ref ref;

  void signUp(String email, String password) async {
    try {
      state = const ResultValue.loading();
      await ref
          .read(authRepositoryProvider)
          .createUserWithEmailAndPassword(email, password);
      final user = ref.read(authRepositoryProvider).currentUser;
      state = ResultValue.data(user);
    } catch (_) {
      state = ResultValue.error(Exception("Failed to sign up"));
    }
  }

  void login(String email, String password) async {
    try {
      state = const ResultValue.loading();
      await ref
          .read(authRepositoryProvider)
          .signInWithEmailAndPassword(email, password);
      final user = ref.read(authRepositoryProvider).currentUser;
      state = ResultValue.data(user);
    } catch (_) {
      state = ResultValue.error(Exception("Failed to login"));
    }
  }

  void logout() async {
    try {
      state = const ResultValue.loading();
      await ref.read(authRepositoryProvider).signOut();
      state = const ResultValue.empty();
    } catch (_) {
      state = ResultValue.error(Exception("Failed to logout"));
    }
  }
}

final authControllerProvider =
    StateNotifierProvider<AuthController, ResultValue<AppUser?>>(
      (ref) => AuthController(ref),
    );
