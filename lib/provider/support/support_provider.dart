import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/impl/support_api_impl.dart';
import 'package:instant_grrocery_delivery/data_source/api/support_api.dart';
import 'package:instant_grrocery_delivery/model/support/dto/support_dto.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_local_provider.dart';

final supportApiProvider = Provider<SupportApi>((ref) {
  return SupportApiImpl();
});

final createSupportProvider = FutureProvider.family<bool, CreateSupportDto>(
  (ref, arg) async {
    final authUser = await ref.read(getAuthUserProvider.future);
    if (authUser != null) {
      final r = await ref.read(supportApiProvider).createSupport(arg, authUser);
      return r;
    }
    return false;
  },
);
