import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../model/category.dart';

class CategoryApi {
  static const String baseUrl = '143.244.169.231:8002';

  // Function to fetch all categories from the API
  Future<List<Category>> getCategories() async {
    try {
      final response = await http.get(Uri.http(baseUrl, 'category'));
      if (response.statusCode == 200) {
        final Iterable data = json.decode(response.body);
        List<Category> categories = List<Category>.from(
          data.map(
            (model) => Category.fromJson(model),
          ),
        );
        return categories;
      } else {
        throw Exception('Failed to fetch categories');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<dynamic>> getCategoriesById(int categoryId) async {
    try {
      final response =
          await http.get(Uri.http(baseUrl, '/category/$categoryId'));
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to fetch categories');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Category> getCategoriesByIdWithProduct(int categoryId) async {
    try {
      final response = await http
          .get(Uri.http(baseUrl, '/category/$categoryId/with-product'));
      if (response.statusCode == 200) {
        return Category.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to fetch categories');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  // Function to create a new category
  Future<bool> createCategory(Map<String, dynamic> categoryData) async {
    try {
      final response = await http.post(Uri.http(baseUrl, '/category'),
          headers: {"Content-Type": "application/json"},
          body: json.encode(categoryData));
      if (response.statusCode == 201) {
        return true;
      } else {
        throw Exception('Failed to create category');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  // Function to update an existing category
  Future<bool> updateCategory(
      int categoryId, Map<String, dynamic> categoryData) async {
    try {
      final response = await http.put(
          Uri.http(baseUrl, '/category/$categoryId'),
          headers: {"Content-Type": "application/json"},
          body: json.encode(categoryData));
      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception('Failed to update category');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  // Function to delete an existing category
  Future<bool> deleteCategory(int categoryId) async {
    try {
      final response =
          await http.delete(Uri.http(baseUrl, '/category/$categoryId'));
      if (response.statusCode == 204) {
        return true;
      } else {
        throw Exception('Failed to delete category');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
