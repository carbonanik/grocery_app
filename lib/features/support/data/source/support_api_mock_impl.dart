// import 'package:get/get_utils/get_utils.dart';
import 'package:instant_grrocery_delivery/core/simulate_fetch.dart';
import 'package:instant_grrocery_delivery/features/support/data/source/support_api.dart';
import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';
import 'package:instant_grrocery_delivery/features/support/data/model/dto/support_dto.dart';
import 'package:instant_grrocery_delivery/features/support/data/model/support.dart';
import 'package:instant_grrocery_delivery/core/util/extension/list/extension.dart';

class SupportApiMockImpl extends SupportApi {
  @override
  Future<List<Support>> getSupports() async {
    await simulateFetch();
    return supportJson.map((e) => Support.fromJson(e)).toList();
  }

  @override
  Future<bool> createSupport(CreateSupportDto createSupportDto, AuthResponse authUser) async {
    await simulateFetch();
    return false;
  }

  @override
  Future<bool> updateCategory(int categoryId, Map<String, dynamic> categoryData) async {
    await simulateFetch();
    return false;
  }

  @override
  Future<bool> deleteCategory(int categoryId) async {
    final support = supportJson.firstWhereOrNull((element) => element["id"] == categoryId);
    if (support == null) {
      return false;
    } else {
      supportJson.removeAt(supportJson.indexWhere((element) => element["id"] == categoryId));
      return true;
    }
  }
}

final supportJson = [
  {
    "id": 1,
    "subject": "Some Subject 1",
    "message": "This is a message.",
  },
  {
    "id": 2,
    "subject": "Some Subject 2",
    "message": "This is a message.",
  },
  {
    "id": 3,
    "subject": "Some Subject 3",
    "message": "This is a message.",
  },
  {
    "id": 4,
    "subject": "Some Subject 4",
    "message": "This is a message.",
  },
  {
    "id": 5,
    "subject": "Some Subject 5",
    "message": "This is a message.",
  },
];

