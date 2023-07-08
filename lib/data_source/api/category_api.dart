import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:instant_grrocery_delivery/data_source/api/util/header.dart';
import 'package:instant_grrocery_delivery/model/dto/category_dto.dart';

import '../../model/category.dart';
import 'util/paths.dart';

class CategoryApi {
  Future<List<Category>> getCategories() async {
    // get all category from api
    final response = await http.get(
      getUri(path: ApiPath.category),
      headers: getHeader(),
    );

    if (response.statusCode == 200) {
      // response to json
      final Iterable data = json.decode(response.body)['data'];

      // from response to dto
      List<CategoryDto> categories = List<CategoryDto>.from(
        data.map(
          (model) => CategoryDto.fromJson(model),
        ),
      );
      return categories.map((e) => e.getCategory()).toList();
    } else {
      throw Exception('Failed to fetch categories');
    }
  }

  Future<Category> getCategoriesByIdWithProduct(int categoryId) async {
    final response = await http.get(
      getUri(
        path: '${ApiPath.category}/$categoryId',
        parameters: {'populate': '*'},
      ),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final category = CategoryDto.fromJson(data['data']);
      return category.getCategory();
    } else {
      throw Exception('Failed to fetch categories');
    }
  }

  // Future<bool> createCategory(Map<String, dynamic> categoryData) async {
  //   final response = await http.post(getUri(path: ApiPath.category),
  //       headers: {"Content-Type": "application/json"},
  //       body: json.encode(categoryData));
  //   if (response.statusCode == 201) {
  //     return true;
  //   } else {
  //     throw Exception('Failed to create category');
  //   }
  // }

  // Future<bool> updateCategory(
  //     int categoryId, Map<String, dynamic> categoryData) async {
  //   final response = await http.put(
  //       getUri(path: '${ApiPath.category}/$categoryId'),
  //       headers: {"Content-Type": "application/json"},
  //       body: json.encode(categoryData));
  //   if (response.statusCode == 200) {
  //     return true;
  //   } else {
  //     throw Exception('Failed to update category');
  //   }
  // }

  // Future<bool> deleteCategory(int categoryId) async {
  //   final response =
  //       await http.delete(getUri(path: '${ApiPath.category}/$categoryId'));
  //   if (response.statusCode == 204) {
  //     return true;
  //   } else {
  //     throw Exception('Failed to delete category');
  //   }
  // }
}
