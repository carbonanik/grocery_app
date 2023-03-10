import 'dart:convert';

import 'package:get/get_utils/get_utils.dart';
import 'package:http/http.dart' as http;
import 'package:instant_grrocery_delivery/provider/product_provider.dart';

import '../../model/product.dart';

class ProductApi {
  static const String baseUrl = '143.244.169.231:8002';

  // Function to fetch all products from the API
  Future<List<Product>> getProducts() async {
    try {
      final response = await http.get(Uri.http(baseUrl, 'product'));
      if (response.statusCode == 200) {
        final Iterable data = json.decode(response.body);
        List<Product> products =
            List<Product>.from(data.map((model) => Product.fromMap(model)));
        return products;
      } else {
        throw Exception('Failed to fetch products');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Product> getProductsById(int productId) async {
    try {
      final response = await http.get(Uri.http(baseUrl, '/product/$productId'));
      if (response.statusCode == 200) {
        return Product.fromMap(json.decode(response.body));
      } else {
        throw Exception('Failed to fetch products');
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  // Function to create a new product
  Future<bool> createProduct(Map<String, dynamic> productData) async {
    try {
      final response = await http.post(Uri.http(baseUrl, '/product'),
          headers: {"Content-Type": "application/json"},
          body: json.encode(productData));
      if (response.statusCode == 201) {
        return true;
      } else {
        throw Exception('Failed to create product');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  // Function to update an existing product
  Future<bool> updateProduct(
      int productId, Map<String, dynamic> productData) async {
    try {
      final response = await http.put(Uri.http(baseUrl, '/product/$productId'),
          headers: {"Content-Type": "application/json"},
          body: json.encode(productData));
      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception('Failed to update product');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  // Function to delete an existing product
  Future<bool> deleteProduct(int productId) async {
    try {
      final response =
          await http.delete(Uri.http(baseUrl, '/product/$productId'));
      if (response.statusCode == 204) {
        return true;
      } else {
        throw Exception('Failed to delete product');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<Product>> getFavoriteProducts(List<int> ids) async {
    try {
      if (ids.length == 0) {
        throw Exception('On favorite id provided');
      }

      if (ids.length == 1) {
        ids.add(ids[0]);
      }

      final response = await http.post(Uri.http(baseUrl, '/product/favorite'),
          headers: {"Content-Type": "application/json"},
          body: json.encode(ids));

      if (response.statusCode == 200) {
        final Iterable data = json.decode(response.body);
        List<Product> products =
            List<Product>.from(data.map((model) => Product.fromMap(model)));
        return products;
      } else {
        response.printError();
        print(response.body);
        throw Exception('Failed to create product');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
