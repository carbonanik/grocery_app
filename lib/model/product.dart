import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'cart_item.dart';

part 'product.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
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

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  factory Product.fromJson(Map<String, dynamic> source) =>
      _$ProductFromJson(source);
}
