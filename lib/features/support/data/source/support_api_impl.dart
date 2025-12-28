import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:instant_grrocery_delivery/core/api/paths.dart';
import 'package:instant_grrocery_delivery/features/support/data/source/support_api.dart';
import 'package:instant_grrocery_delivery/core/api/extensions.dart';
import 'package:instant_grrocery_delivery/core/api/header.dart';
import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';
import 'package:instant_grrocery_delivery/features/support/data/model/dto/support_dto.dart';
import 'package:instant_grrocery_delivery/features/support/data/model/support.dart';

class SupportApiImpl extends SupportApi {
  @override
  Future<List<Support>> getSupports() async {
    // get all category from api
    final response = await http.get(
      getUri(path: Paths.support),
      headers: getHeader(),
    );

    if (response.ok) {
      // response to json
      final Iterable data = json.decode(response.body)['data'];

      // from response to dto
      List<ReadSupportDto> supports = List<ReadSupportDto>.from(
        data.map((model) => ReadSupportDto.fromJson(model)),
      );
      return supports.map((e) => e.toSupport()).toList();
    } else {
      throw Exception('Failed to fetch supports');
    }
  }

  @override
  Future<bool> createSupport(
    CreateSupportDto createSupportDto,
    AuthResponse authUser,
  ) async {
    final response = await http.post(
      getUri(path: Paths.support),
      headers: getHeader(token: authUser),
      body: json.encode({"data": createSupportDto.toJson()}),
    );
    print(response.body);
    if (response.ok) {
      return true;
    } else {
      throw Exception('Failed to create category');
    }
  }

  @override
  Future<bool> updateCategory(
    int categoryId,
    Map<String, dynamic> categoryData,
  ) async {
    final response = await http.put(
      getUri(path: '${Paths.category}/$categoryId'),
      headers: {"Content-Type": "application/json"},
      body: json.encode(categoryData),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Failed to update category');
    }
  }

  @override
  Future<bool> deleteCategory(int categoryId) async {
    final response = await http.delete(
      getUri(path: '${Paths.category}/$categoryId'),
    );
    if (response.statusCode == 204) {
      return true;
    } else {
      throw Exception('Failed to delete category');
    }
  }
}
