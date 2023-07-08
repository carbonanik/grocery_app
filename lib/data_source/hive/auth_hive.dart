import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:instant_grrocery_delivery/data_source/hive/constant/constant.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';

import '../../model/user.dart';

const authUserId = 'auth_user_id';
const currentUserId = 'me';

Future<AuthResponseDto?> getAuthUserHive() async {
  Box box = await Hive.openBox(HiveBoxName.authBox);
  final authUserJson = await box.get(authUserId);
  if (authUserJson != null) {
    AuthResponseDto? authUser = AuthResponseDto.fromJson(jsonDecode(jsonEncode(authUserJson)));
    return authUser;
  }
  // throw Exception('Failed to get auth user');
  return null;
}

Future<bool> putAuthUserHive(AuthResponseDto authUser) async {
  Box box = await Hive.openBox(HiveBoxName.authBox);
  box.put(authUserId, authUser.toJson());
  return true;
}

Future<void> removeAuthUserHive() async {
  Box box = await Hive.openBox(HiveBoxName.authBox);
  box.delete(authUserId);
}
//
// Future<ReadUser> getCurrentUserHive() async {
//   Box box = await Hive.openBox(HiveBoxName.authBox);
//   ReadUser user = box.get(currentUserId);
//   return user;
// }
//
// Future<void> putCurrentUserHive(ReadUser user) async {
//   Box box = await Hive.openBox(HiveBoxName.authBox);
//   box.put(currentUserId, user);
// }
//
// Future<void> removeCurrentUserHive() async {
//   Box box = await Hive.openBox(HiveBoxName.authBox);
//   box.delete(currentUserId);
// }
