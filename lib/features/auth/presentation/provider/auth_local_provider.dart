import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/features/auth/data/source/auth_local.dart';
import 'package:instant_grrocery_delivery/features/auth/data/source/auth_local_impl.dart';
import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';

final authLocalProvider = Provider<AuthLocal>((ref) {
  return AuthLocalImpl();
});

final getAuthUserProvider = FutureProvider.autoDispose<AuthResponse?>((ref) async {
  return await ref.read(authLocalProvider).getAuthUser();
});

final saveAuthUserProvider = FutureProvider.family<bool, AuthResponse>((ref, arg) async {
  return await ref.read(authLocalProvider).putAuthUser(arg);
});

// class LocalAuthListener extends StateNotifier<AuthResult> {
//   LocalAuthListener(this.ref) : super(const AuthResult.initial()){
//    ref.watch(authLocalProvider).listenAuthUserChange((auth) {
//      if (auth == null) {
//        state = AuthResult.error(Exception("Failed to get auth user"));
//      } else {
//        state = AuthResult.data(auth);
//      }
//    });
//   }
//   final Ref ref;
// }
//
// final authListenerProvider = StateNotifierProvider<LocalAuthListener, AuthResult>(
//   (ref) => LocalAuthListener(ref),
// );
