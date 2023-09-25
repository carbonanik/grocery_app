import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/local/auth_hive.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';


final getAuthUserProvider = FutureProvider<AuthResponse?>((ref) async {
  return getAuthUserHive();
});

final saveAuthUserProvider = FutureProvider.family<bool, AuthResponse>((ref, arg) async {
  return await putAuthUserHive(arg);
});
