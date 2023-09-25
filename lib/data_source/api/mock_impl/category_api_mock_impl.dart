import 'package:instant_grrocery_delivery/data_source/api/category_api.dart';
import 'package:instant_grrocery_delivery/data_source/api/mock_impl/product_api_mock_impl.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';
import '../../../model/category/category.dart';

class CategoryApiMockImpl extends CategoryApi {
  @override
  Future<List<Category>> getCategories() async {
    final categories = categoriesJson.map((e) => Category.fromJson(e)).toList();
    return categories;
  }

  @override
  Future<Category> getCategoriesByIdWithProduct(int categoryId) async {
    final productsIds = relationJson[categoryId.toString()] as List;

    final productsJ = productsJson.where(
      (element) => productsIds.contains(element["id"]),
    );

    final categoryJ = categoriesJson.firstWhere(
      (element) => element["id"] == categoryId,
    );
    categoryJ["products"] = productsJ;
    final category = Category.fromJson(categoryJ);

    return category;
  }

  @override
  Future<bool> createCategory(Map<String, dynamic> categoryData) async {
    return false;
  }

  @override
  Future<bool> updateCategory(
      int categoryId, Map<String, dynamic> categoryData) async {
    return false;
  }

  @override
  Future<bool> deleteCategory(int categoryId) async {
    return false;
  }
}

final relationJson = {
  "1": ["1", "2", "4"],
  "2": ["3"],
  "3": ["5", "6", "10"],
  "4": ["7", "8", "12", "16"],
  "5": ["9"],
  "6": ["11"],
  "7": ["13", "14"],
  "8": ["15"],
  "9": ["17", "18"],
};

final categoriesJson = [
  {
    "id": 1,
    "name": "Bakery and Bread",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "raspberries.png"
  },
  {
    "id": 2,
    "name": "Meat and Seafood",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "pineapple.png"
  },
  {
    "id": 3,
    "name": "Pasta and Rice",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "pear.png"
  },
  {
    "id": 4,
    "name": "Oils Sauces",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "orange.png"
  },
  {
    "id": 5,
    "name": "Salad Dressings",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "mango.png"
  },
  {
    "id": 6,
    "name": "Cereals and Breakfast Foods",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "mango.png"
  },
  {
    "id": 7,
    "name": "Soups and Canned Goods",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "lemons.png"
  },
  {
    "id": 8,
    "name": "Frozen Foods",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "kiwis.png"
  },
  {
    "id": 9,
    "name": "Dairy, Cheese and Eggs",
    "description":
        "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group.",
    "image": "guava.png"
  }
];
