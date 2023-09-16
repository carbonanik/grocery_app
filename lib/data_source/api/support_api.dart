import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/dto/support_dto.dart';
import 'package:instant_grrocery_delivery/model/support.dart';

abstract class SupportApi {
  Future<List<Support>> getSupports();

  Future<bool> createSupport(CreateSupportDto createSupportDto, AuthResponseDto authUser);

  Future<bool> updateCategory(int categoryId, Map<String, dynamic> categoryData);

  Future<bool> deleteCategory(int categoryId);
}
