import 'dart:convert';
import 'dart:math';

import 'package:get/get_utils/get_utils.dart';
import 'package:http/http.dart' as http;
import 'package:instant_grrocery_delivery/data_source/api/product_api.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/paths.dart';
import 'package:instant_grrocery_delivery/model/product/dto/product_dto.dart';

import '../../../model/product/product.dart';

final _random = Random();

int next(int min, int max) => min + _random.nextInt(max - min);

class ProductApiMockImpl extends ProductApi {
  @override
  Future<List<Product>> getProducts() async {
    final products = productsJson.map((e) => Product.fromJson(e)).toList();
    return products;
  }

  @override
  Future<List<Product>> getPopularProducts() async {
    final pps = productsJson
        .sublist(
          next(0, productsJson.length ~/ 2),
          next(productsJson.length ~/ 2, productsJson.length),
        )
        .map((e) => Product.fromJson(e))
        .toList();
    return pps;
  }

  @override
  Future<Product> getProductsById(int productId) async {
    final product = Product.fromJson(
      productsJson.firstWhere(
        (element) => element["id"] == productId,
      ),
    );
    return product;
  }

  @override
  Future<bool> createProduct(Map<String, dynamic> productData) async {
    return false;
  }

  @override
  Future<bool> updateProduct(
      int productId, Map<String, dynamic> productData) async {
    return false;
  }

  @override
  Future<bool> deleteProduct(int productId) async {
    return false;
  }

  @override
  Future<List<Product>> getFavoriteProducts(String idsJson) async {
    final List<dynamic> ids = json.decode(idsJson);
    if (ids.isEmpty) return [];

    final fp = productsJson
        .where((element) => ids.contains(element["id"]))
        .map((e) => Product.fromJson(e))
        .toList();
    return fp;
  }
}

final productsJson = [
  {
    "name": "Green Apple",
    "price": 300,
    "description":
        "The green apple is a hybrid fruit. It is developed by combining two different species of apple, namely, Malus slyvesterus and Malus domesticus.",
    "image": "apple-green.png",
    "weight": "1kg",
    "id": 2
  },
  {
    "name": "Banana",
    "price": 70,
    "description":
        "A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa.",
    "image": "banana.png",
    "weight": "1kg",
    "id": 1
  },
  {
    "name": "Red Apple",
    "price": 250,
    "description":
        "The red apple is a hybrid fruit. It is developed by combining two different species of apple, namely, Malus slyvesterus and Malus domesticus.",
    "image": "apple-red.png",
    "weight": "1kg",
    "id": 3
  },
  {
    "name": "Yellow Apple",
    "price": 250,
    "description":
        "The yellow apple is a hybrid fruit. It is developed by combining two different species of apple, namely, Malus slyvesterus and Malus domesticus.",
    "image": "apple-yellow.png",
    "weight": "500g",
    "id": 4
  },
  {
    "name": "Blackberry",
    "price": 400,
    "description":
        "The blackberry is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "blackberries.png",
    "weight": "500g",
    "id": 5
  },
  {
    "name": "Blueberries",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "blueberries.png",
    "weight": "500g",
    "id": 6
  },
  {
    "name": "Charries",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "charries.png",
    "weight": "500g",
    "id": 7
  },
  {
    "name": "Coconut",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "coconut.png",
    "weight": "500g",
    "id": 8
  },
  {
    "name": "Date Palm",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "date-palm.png",
    "weight": "500g",
    "id": 9
  },
  {
    "name": "Goji",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "goji.png",
    "weight": "500g",
    "id": 10
  },
  {
    "name": "Grape",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "grape.png",
    "weight": "500g",
    "id": 11
  },
  {
    "name": "Guava",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "guava.png",
    "weight": "500g",
    "id": 12
  },
  {
    "name": "Kiwis",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "kiwis.png",
    "weight": "500g",
    "id": 13
  },
  {
    "name": "Lemons",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "lemons.png",
    "weight": "500g",
    "id": 14
  },
  {
    "name": "Mango",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "mango.png",
    "weight": "500g",
    "id": 15
  },
  {
    "name": "Orange",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "orange.png",
    "weight": "500g",
    "id": 16
  },
  {
    "name": "Pear",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "pear.png",
    "weight": "500g",
    "id": 17
  },
  {
    "name": "Pineapple",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "pineapple.png",
    "weight": "500g",
    "id": 18
  },
  {
    "name": "Raspberries",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "raspberries.png",
    "weight": "500g",
    "id": 19
  },
  {
    "name": "Watermelon",
    "price": 400,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "watermelon.png",
    "weight": "500g",
    "id": 20
  }
];
