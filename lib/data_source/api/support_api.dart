import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/support/dto/support_dto.dart';
import 'package:instant_grrocery_delivery/model/support/support.dart';

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
