import 'package:hive_ce/hive.dart';
import 'package:instant_grrocery_delivery/features/auth/data/source/auth_local.dart';
import 'package:instant_grrocery_delivery/core/api/local_constants.dart';
import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';

const authUserId = 'auth_user_id';
// const currentUserId = 'me';

class AuthLocalImpl extends AuthLocal {
  @override
  Future<AuthResponse?> getAuthUser() async {
    final box = Hive.lazyBox<AuthResponse>(HiveBoxName.authBox);
    return await box.get(authUserId);
  }

  @override
  Future<bool> putAuthUser(AuthResponse authUser) async {
    final box = Hive.lazyBox<AuthResponse>(HiveBoxName.authBox);
    await box.put(authUserId, authUser);
    return true;
  }

  @override
  Future<void> removeAuthUser() async {
    final box = Hive.lazyBox<AuthResponse>(HiveBoxName.authBox);
    await box.delete(authUserId);
  }
}

