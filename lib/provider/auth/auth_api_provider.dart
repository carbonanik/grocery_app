import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/auth_api.dart';
import 'package:instant_grrocery_delivery/data_source/api/impl/auth_api_impl.dart';
import 'package:instant_grrocery_delivery/data_source/api/mock_impl/auth_api_mock_impl.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/using_api_impl_for.dart';
import 'package:instant_grrocery_delivery/provider/api_server_provider.dart';

final Provider<AuthApi> authApiProvider = Provider<AuthApi>((ref) {
  final usingApi = ref.read(apiServerProvider);
  switch (usingApi) {

    case UsingApiImplFor.fastApiServer:
      throw UnimplementedError();
    case UsingApiImplFor.strapiServer:
      return AuthApiImpl();
    case UsingApiImplFor.mockServer:
      return AuthApiMockImpl();
  }
});
