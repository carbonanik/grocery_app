import 'package:instant_grrocery_delivery/model/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
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

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  factory Category.fromJson(Map<String, dynamic> source) =>
      _$CategoryFromJson(source);
}
