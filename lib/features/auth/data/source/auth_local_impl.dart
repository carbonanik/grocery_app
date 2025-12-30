import 'package:instant_grrocery_delivery/features/auth/data/source/auth_local.dart';
import 'package:instant_grrocery_delivery/features/auth/domain/app_user.dart';

class AuthLocalImpl extends AuthLocal {
  @override
  Future<AppUser?> getAuthUser() async {
    return null;
  }

  @override
  Future<void> putAuthUser(AppUser authUser) async {
    // No-op
  }

  @override
  Future<void> removeAuthUser() async {
    // No-op
  }
}
