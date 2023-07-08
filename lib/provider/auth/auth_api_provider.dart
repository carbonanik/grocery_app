import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/auth_api.dart';

final authApiProvider = Provider((ref) => AuthApi());
