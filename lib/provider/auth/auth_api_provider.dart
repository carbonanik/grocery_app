import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/core/dio_client.dart';
import 'package:instant_grrocery_delivery/data_source/api/auth_api.dart';

import '../../data_source/api/impl_dio/auth_api_impl.dart';
import '../../data_source/api/util/paths.dart';

final Provider<AuthApi> authApiProvider = Provider<AuthApi>((ref) {
  return AuthApiImpl(DioClient(baseUrl: Paths.baseUrl));
});
