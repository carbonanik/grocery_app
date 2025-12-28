import 'dart:math';

import 'package:instant_grrocery_delivery/features/product/domain/product_repository.dart';
import 'package:instant_grrocery_delivery/features/product/data/model/product.dart';

final _random = Random();

int next(int min, int max) => min + _random.nextInt(max - min);

class MockProductRepository implements ProductRepository {
  @override
  Future<List<Product>> getProducts() async {
    await Future.delayed(const Duration(milliseconds: 800)); // Simulate latency
    return _productsJson.map((e) => Product.fromJson(e)).toList();
  }

  @override
  Future<Product> getProductById(int id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final productData = _productsJson.firstWhere(
      (element) => element["id"] == id,
      orElse: () => throw Exception('Product not found'),
    );
    return Product.fromJson(productData);
  }

  @override
  Future<List<Product>> getFavoriteProducts(List<int> ids) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (ids.isEmpty) return [];
    return _productsJson
        .where((element) => ids.contains(element["id"]))
        .map((e) => Product.fromJson(e))
        .toList();
  }

  @override
  Future<List<Product>> getPopularProducts() async {
    await Future.delayed(const Duration(milliseconds: 800));
    // Random selection for demo
    if (_productsJson.length < 2) return getProducts();

    final start = next(0, _productsJson.length ~/ 2);
    final end = next(_productsJson.length ~/ 2, _productsJson.length);

    final pps = _productsJson
        .sublist(start, end)
        .map((e) => Product.fromJson(e))
        .toList();
    return pps;
  }

  @override
  Future<List<Product>> getSimilarProducts(int productId) {
    return getPopularProducts();
  }

  @override
  Future<List<Product>> getFrequentlyBoughtTogether(List<int> cartProductIds) {
    return getPopularProducts();
  }
}

final _productsJson = [
  {
    "name": "Green Apple",
    "price": 300,
    "description":
        "The green apple is a hybrid fruit. It is developed by combining two different species of apple, namely, Malus slyvesterus and Malus domesticus.",
    "image": "apple-green.png",
    "weight": "1kg",
    "id": 2,
  },
  {
    "name": "Banana",
    "price": 70,
    "description":
        "A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa.",
    "image": "banana.png",
    "weight": "1kg",
    "id": 1,
  },
  {
    "name": "Red Apple",
    "price": 250,
    "description":
        "The red apple is a hybrid fruit. It is developed by combining two different species of apple, namely, Malus slyvesterus and Malus domesticus.",
    "image": "apple-red.png",
    "weight": "1kg",
    "id": 3,
  },
  {
    "name": "Yellow Apple",
    "price": 340,
    "description":
        "The yellow apple is a hybrid fruit. It is developed by combining two different species of apple, namely, Malus slyvesterus and Malus domesticus.",
    "image": "apple-yellow.png",
    "weight": "500g",
    "id": 4,
  },
  {
    "name": "Blackberry",
    "price": 120,
    "description":
        "The blackberry is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "blackberries.png",
    "weight": "500g",
    "id": 5,
  },
  {
    "name": "Blueberries",
    "price": 610,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "blueberries.png",
    "weight": "500g",
    "id": 6,
  },
  {
    "name": "Charries",
    "price": 450,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "charries.png",
    "weight": "500g",
    "id": 7,
  },
  {
    "name": "Coconut",
    "price": 560,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "coconut.png",
    "weight": "500g",
    "id": 8,
  },
  {
    "name": "Date Palm",
    "price": 435,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "date-palm.png",
    "weight": "500g",
    "id": 9,
  },
  {
    "name": "Goji",
    "price": 210,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "goji.png",
    "weight": "500g",
    "id": 10,
  },
  {
    "name": "Grape",
    "price": 360,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "grape.png",
    "weight": "500g",
    "id": 11,
  },
  {
    "name": "Guava",
    "price": 270,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "guava.png",
    "weight": "500g",
    "id": 12,
  },
  {
    "name": "Kiwis",
    "price": 490,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "kiwis.png",
    "weight": "500g",
    "id": 13,
  },
  {
    "name": "Lemons",
    "price": 260,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "lemons.png",
    "weight": "500g",
    "id": 14,
  },
  {
    "name": "Mango",
    "price": 230,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "mango.png",
    "weight": "500g",
    "id": 15,
  },
  {
    "name": "Orange",
    "price": 460,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "orange.png",
    "weight": "500g",
    "id": 16,
  },
  {
    "name": "Pear",
    "price": 350,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "pear.png",
    "weight": "500g",
    "id": 17,
  },
  {
    "name": "Pineapple",
    "price": 480,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "pineapple.png",
    "weight": "500g",
    "id": 18,
  },
  {
    "name": "Raspberries",
    "price": 280,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "raspberries.png",
    "weight": "500g",
    "id": 19,
  },
  {
    "name": "Watermelon",
    "price": 255,
    "description":
        "The blueberries is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus,",
    "image": "watermelon.png",
    "weight": "500g",
    "id": 20,
  },
];

