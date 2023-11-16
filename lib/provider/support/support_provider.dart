import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/impl/support_api_impl.dart';
import 'package:instant_grrocery_delivery/data_source/api/mock_impl/support_api_mock_impl.dart';
import 'package:instant_grrocery_delivery/data_source/api/support_api.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/using_api_impl_for.dart';
import 'package:instant_grrocery_delivery/model/support/dto/support_dto.dart';
import 'package:instant_grrocery_delivery/provider/api_server_provider.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_local_provider.dart';

final supportApiProvider = Provider<SupportApi>((ref) {
  final usingApi = ref.read(apiServerProvider);
  switch (usingApi) {

    case UsingApiImplFor.fastApiServer:
      throw UnimplementedError();
    case UsingApiImplFor.strapiServer:
      return SupportApiImpl();
    case UsingApiImplFor.mockServer:
      return SupportApiMockImpl();
  }
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
