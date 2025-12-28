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
