import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';

import '../../data_source/hive/auth_hive.dart';

final getAuthUserProvider = FutureProvider<AuthResponseDto?>((ref) async {
  return getAuthUserHive();
});

final saveAuthUserProvider = FutureProvider.family<bool, AuthResponseDto>((ref, arg) async {
  return await putAuthUserHive(arg);
});
