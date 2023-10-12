
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/using_api_impl_for.dart';

final apiServerProvider = Provider((ref) => UsingApiImplFor.mockServer);
