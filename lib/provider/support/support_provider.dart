import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/impl/support_api_impl.dart';
import 'package:instant_grrocery_delivery/model/support/dto/support_dto.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_hive_provider.dart';

final supportApiProvider = Provider((ref) => SupportApiImpl());



final createSupportProvider = FutureProvider.family<bool, CreateSupportDto>(
  (ref, arg) async {
    final authUser = ref.read(getAuthUserProvider).requireValue;
    if (authUser != null) {
      final r = await ref.read(supportApiProvider).createSupport(arg, authUser);
      return r;
    }
    return false;
  },
);
