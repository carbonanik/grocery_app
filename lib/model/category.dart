import 'package:flutter/foundation.dart';

class Category {
  final int id;
  final String name;
  final String image;

  Category({required this.id, required this.name, required this.image});

  static Category fromJson(Map<String, dynamic> json) {
    return Category(
        id: json['id'],
        name: json['name'],
        image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    return data;
  }

  static List<Category> categories = [
    Category(
      id: 1,
      name: 'Fruit & Vegetables',
      image: 'assets/images/fruit/banana.png',
    ),
    Category(
      id: 1,
      name: 'Cocking Essential',
      image: 'assets/images/fruit/apple.png',
    ),
    Category(
      id: 1,
      name: 'Nut & Dry Fruits',
      image: 'assets/images/fruit/blueberries.png',
    ),
    Category(
      id: 1,
      name: 'Dairy Products',
      image: 'assets/images/fruit/guava.png',
    ),
    Category(
      id: 1,
      name: 'Drink & Beverage',
      image: 'assets/images/fruit/mango.png',
    ),
    Category(
      id: 1,
      name: 'Ice Cream & Desserts',
      image: 'assets/images/fruit/orange.png',
    ),
    Category(
      id: 1,
      name: 'Chocolate & Candies',
      image: 'assets/images/fruit/pear.png',
    ),
    Category(
      id: 1,
      name: 'Meat, Fish & Eggs',
      image: 'assets/images/fruit/pineapple.png',
    ),
    Category(
      id: 1,
      name: 'Personal Care',
      image: 'assets/images/fruit/raspberries.png',
    ),
    Category(
      id: 1,
      name: 'Health & Hygiene',
      image: 'assets/images/fruit/watermelon.png',
    ),
  ];
}
