import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';
import 'package:instant_grrocery_delivery/features/support/data/model/dto/support_dto.dart';
import 'package:instant_grrocery_delivery/features/support/data/model/support.dart';

abstract class SupportApi {
  Future<List<Support>> getSupports();

  Future<bool> createSupport(
    CreateSupportDto createSupportDto,
    AuthResponse authUser,
  );

  Future<bool> updateCategory(
    int categoryId,
    Map<String, dynamic> categoryData,
  );

  Future<bool> deleteCategory(int categoryId);
}

