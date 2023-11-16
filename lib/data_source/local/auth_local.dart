import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';

abstract class AuthLocal {
  Future<AuthResponse?> getAuthUser();

  Future<bool> putAuthUser(AuthResponse authUser);

  Future<void> removeAuthUser();
}
