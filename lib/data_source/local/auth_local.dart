import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';

abstract class AuthLocal {
  AuthResponse? getAuthUser();

  bool putAuthUser(AuthResponse authUser);

  void removeAuthUser();
}
