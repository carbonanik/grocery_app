import 'package:instant_grrocery_delivery/model/category/category.dart';

abstract class CategoryApi {
  Future<List<Category>> getCategories();

  Future<Category> getCategoriesByIdWithProduct(int categoryId);

  Future<bool> createCategory(Map<String, dynamic> categoryData);

  Future<bool> updateCategory(int categoryId, Map<String, dynamic> categoryData);

  Future<bool> deleteCategory(int categoryId);
}
