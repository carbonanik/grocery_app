import 'package:instant_grrocery_delivery/data_source/api/auth_api.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_api_provider.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_local_provider.dart';
import 'package:instant_grrocery_delivery/util/extension/async_value.dart';

// class LoginNotifier extends StateNotifier<AuthResult> {
//   LoginNotifier(this.ref) : super(const AuthResult.initial());
//
//   final Ref ref;
//
//   void login(LoginRequest loginUser) async {
//     try {
//       state = const AuthResult.loading();
//       final authUser = await ref.read(authApiProvider).login(loginUser);
//       await ref.read(saveAuthUserProvider(authUser).future);
//       state = AuthResult.data(authUser);
//     } on Exception catch (e) {
//       state = AuthResult.error(e);
//     }
//   }
// }
//
// final loginNotifierProvider =
//     StateNotifierProvider.autoDispose<LoginNotifier, AuthResult>(
//   (ref) => LoginNotifier(ref),
// );
