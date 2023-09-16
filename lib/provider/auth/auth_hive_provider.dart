import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/local/auth_hive.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';


final getAuthUserProvider = FutureProvider<AuthResponseDto?>((ref) async {
  return getAuthUserHive();
});

final saveAuthUserProvider = FutureProvider.family<bool, AuthResponseDto>((ref, arg) async {
  return await putAuthUserHive(arg);
});
