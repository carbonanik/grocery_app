// import 'package:get/get_utils/get_utils.dart';
import 'package:instant_grrocery_delivery/features/category/data/model/category.dart';
import 'package:instant_grrocery_delivery/features/category/data/source/category_api.dart';
import 'package:instant_grrocery_delivery/features/product/data/source/product_api_mock_impl.dart';
import 'package:instant_grrocery_delivery/core/simulate_fetch.dart';

class CategoryApiMockImpl extends CategoryApi {
  @override
  Future<List<Category>> getCategories() async {
    await simulateFetch();
    final categories = categoriesJson
        .map((e) {
          final e2 = Map<String, dynamic>.from(e);
          e2.remove('products');
          return e2;
        })
        .toList()
        .map((e) => Category.fromJson(e))
        .toList();
    return categories;
  }

  @override
  Future<Category> getCategoriesByIdWithProduct(int categoryId) async {
    await simulateFetch();
    // final productsIds = relationJson[categoryId.toString()] as List;

    // final productsJ = productsJson.where(
    //   (element) => productsIds.contains(element["id"]),
    // );

    Map<String, dynamic>? categoryJ;

    for (var category in categoriesJson) {
      if (category["id"] == categoryId) {
        categoryJ = category;
        break;
      }
    }

    if (categoryJ == null) {
      throw Exception('category not found');
    }

    // categoryJ["products"] = (categoryJ["products"] as List)
    //     .map(
    //       (id) => productsJson.firstWhere((pj) => pj["id"] == id),
    //     )
    //     .toList();

    List products = [];
    for (int productId in categoryJ["products"]) {
      // productsJson.firstWhere((pj) => pj["id"] == productId)
      for (var product in productsJson) {
        if (product["id"] == productId) {
          products.add(product);
        }
      }
    }

    categoryJ["products"] = products;

    final category = Category.fromJson(categoryJ);

    return category;
  }

  @override
  Future<bool> createCategory(Map<String, dynamic> categoryData) async {
    return false;
  }

  @override
  Future<bool> updateCategory(
    int categoryId,
    Map<String, dynamic> categoryData,
  ) async {
    return false;
  }

  @override
  Future<bool> deleteCategory(int categoryId) async {
    return false;
  }
}

final categoriesJson = [
  {
    "id": 1,
    "name": "Bakery and Bread",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "raspberries.png",
    "products": [1, 2, 4],
  },
  {
    "id": 2,
    "name": "Meat and Seafood",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "pineapple.png",
    "products": [3],
  },
  {
    "id": 3,
    "name": "Pasta and Rice",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "pear.png",
    "products": [5, 6, 10],
  },
  {
    "id": 4,
    "name": "Oils Sauces",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "orange.png",
    "products": [7, 8, 12, 16],
  },
  {
    "id": 5,
    "name": "Salad Dressings",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "mango.png",
    "products": [9],
  },
  {
    "id": 6,
    "name": "Cereals and Breakfast Foods",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "mango.png",
    "products": [11],
  },
  {
    "id": 7,
    "name": "Soups and Canned Goods",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "lemons.png",
    "products": [13, 14],
  },
  {
    "id": 8,
    "name": "Frozen Foods",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "kiwis.png",
    "products": [15],
  },
  {
    "id": 9,
    "name": "Dairy, Cheese and Eggs",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "guava.png",
    "products": [17, 18],
  },
];
