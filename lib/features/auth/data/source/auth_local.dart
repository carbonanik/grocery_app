import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';

abstract class AuthLocal {
  Future<AuthResponse?> getAuthUser();

  Future<bool> putAuthUser(AuthResponse authUser);

  Future<void> removeAuthUser();
}

