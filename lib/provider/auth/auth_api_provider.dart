import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/impl/auth_api_impl.dart';

final authApiProvider = Provider((ref) => AuthApiImpl());
