import 'package:instant_grrocery_delivery/model/product.dart';

class Category {
  final int id;
  final String name;
  final String image;
  final String description;
  final List<Product>? products;

  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    this.products,
  });

  static Category fromJson(Map<String, dynamic> json) {
    final List<Product>? products;
    if (json['products'] == null) {
      products = null;
    } else {
      products = List.from(json['products'].map((c) => Product.fromMap(c)));
    }
    return Category(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        description: json['description'],
        products: products);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    return data;
  }
}
