import 'package:hive_flutter/hive_flutter.dart';
import 'package:instant_grrocery_delivery/data_source/local/auth_local.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';

const authUserId = 'auth_user_id';
// const currentUserId = 'me';

class AuthLocalImpl extends AuthLocal {
  @override
  AuthResponse? getAuthUser() {
    final box = Hive.box<AuthResponse>(HiveBoxName.authBox);
    return box.get(authUserId);
    // final authUserJson = box.get(authUserId);
    // if (authUserJson != null) {
    //   AuthResponse? authUser = AuthResponse.fromJson(jsonDecode(authUserJson));
    //   return authUser;
    // }
    // return null;
  }

  @override
  bool putAuthUser(AuthResponse authUser)  {
    final box = Hive.box<AuthResponse>(HiveBoxName.authBox);
    box.put(authUserId, authUser);
    return true;
  }

  @override
  void removeAuthUser() async {
    final box = Hive.box<AuthResponse>(HiveBoxName.authBox);
    box.delete(authUserId);
  }
}
