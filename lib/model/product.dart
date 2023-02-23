import 'dart:convert';

import 'cart_item.dart';

class Product {
  final int id;
  final double price;
  final String name;
  final String description;
  final String image;
  final String weight;

  Product({
    required this.id,
    required this.price,
    required this.name,
    required this.description,
    required this.image,
    required this.weight,
  });

  /// to cart item
  CartItem toCartItem(int quantity, int cartId) {
    return CartItem(
      id: null,
      cartId: cartId,
      quantity: quantity,
      addedTime: DateTime.now().toString(),
      productId: id,
      price: price,
      name: name,
      image: image,
      weight: weight,
    );
  }

  @override
  String toString() {
    return "Product => $name";
  }

  static Product fromMap(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        price: json['price'].toDouble(),
        name: json['name'],
        description: json['description'],
        image: json['image'],
        weight: json['weight']);
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['price'] = price;
    data['name'] = name;
    data['description'] = description;
    data['image'] = image;
    data['weight'] = weight;
    return data;
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
