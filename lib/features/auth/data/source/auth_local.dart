import 'package:instant_grrocery_delivery/features/auth/domain/app_user.dart';

abstract class AuthLocal {
  Future<AppUser?> getAuthUser();

  Future<void> putAuthUser(AppUser authUser);

  Future<void> removeAuthUser();
}
