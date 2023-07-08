import 'dart:convert';

import 'package:get/get_utils/get_utils.dart';
import 'package:http/http.dart' as http;
import 'package:instant_grrocery_delivery/data_source/api/util/paths.dart';
import 'package:instant_grrocery_delivery/model/dto/product_dto.dart';

import '../../model/product.dart';

class ProductApi {
  Future<List<Product>> getProducts() async {
    // get all products form api
    final response = await http.get(getUri(path: ApiPath.product));

    // if success
    if (response.statusCode == 200) {
      // response to json
      final Iterable data = json.decode(response.body)['data'];

      // from json to dto-products
      List<ProductDto> products = List<ProductDto>.from(
        data.map((model) => ProductDto.fromJson(model)),
      );

      // dto-products to products
      return products.map((e) => e.getProduct()).toList();
    } else {
      throw Exception('Failed to fetch products');
    }
  }

  Future<Product> getProductsById(int productId) async {
    final response = await http.get(
      getUri(path: '${ApiPath.product}/$productId'),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final product = ProductDto.fromJson(data['data']);
      return product.getProduct();
    } else {
      throw Exception('Failed to fetch products');
    }
  }

  // Future<bool> createProduct(Map<String, dynamic> productData) async {
  //   final response = await http.post(getUri(path: ApiPath.product),
  //       headers: {"Content-Type": "application/json"},
  //       body: json.encode(productData));
  //   if (response.statusCode == 201) {
  //     return true;
  //   } else {
  //     throw Exception('Failed to create product');
  //   }
  // }

  // Future<bool> updateProduct(
  //     int productId, Map<String, dynamic> productData) async {
  //   final response = await http.put(
  //     getUri(path: '${ApiPath.product}/$productId'),
  //     headers: {"Content-Type": "application/json"},
  //     body: json.encode(productData),
  //   );
  //   if (response.statusCode == 200) {
  //     return true;
  //   } else {
  //     throw Exception('Failed to update product');
  //   }
  // }

  // Future<bool> deleteProduct(int productId) async {
  //   final response =
  //       await http.delete(getUri(path: '${ApiPath.product}/$productId'));
  //   if (response.statusCode == 204) {
  //     return true;
  //   } else {
  //     throw Exception('Failed to delete product');
  //   }
  // }

  Future<List<Product>> getFavoriteProducts(String idsJson) async {
    final List<dynamic> ids = json.decode(idsJson);
    if (ids.isEmpty) return [];

    final Map<String, dynamic> parameters = {};

    // for (var id in ids) {
    parameters['filters[id][\$in]'] = ids.map((e) => e.toString()).toList();
    // }

    // parameters.addAll({'filters[id][\$in]': '5', 'filters[id][\$in]': '6'});

    final response = await http.get(
        getUri(path: ApiPath.product, parameters: parameters),
        headers: {"Content-Type": "application/json"});

    if (response.statusCode == 200) {
      final Iterable data = json.decode(response.body)['data'];
      List<ProductDto> products = List<ProductDto>.from(
          data.map((model) => ProductDto.fromJson(model)));
      return products.map((e) => e.getProduct()).toList();
    } else {
      throw Exception('Failed to create product');
    }
  }
}
