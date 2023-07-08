// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:instant_grrocery_delivery/model/category.dart';
import 'package:instant_grrocery_delivery/model/dto/product_dto.dart';

part 'category_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryDto {
  final int id;
  final CategorySubDto attributes;

  CategoryDto({
    required this.id,
    required this.attributes,
  });

  Category getCategory() {
    return Category(
      id: id,
      name: attributes.name,
      description: attributes.description,
      image: attributes.image,
      products: attributes.products?.data.map((e) => e.getProduct()).toList(),
    );
  }

  Map<String, dynamic> toJson() => _$CategoryDtoToJson(this);

  factory CategoryDto.fromJson(Map<String, dynamic> source) {
    return _$CategoryDtoFromJson(source);
  }
}

@JsonSerializable(explicitToJson: true)
class CategorySubDto {
  final String name;
  final String image;
  final String description;
  final ProductsInCategoryDto? products;
  CategorySubDto({
    required this.name,
    required this.image,
    required this.description,
    this.products,
  });

  Map<String, dynamic> toJson() => _$CategorySubDtoToJson(this);

  factory CategorySubDto.fromJson(Map<String, dynamic> source) {
    return _$CategorySubDtoFromJson(source);
  }
}

@JsonSerializable(explicitToJson: true)
class ProductsInCategoryDto {
  final List<ProductDto> data;
  ProductsInCategoryDto({
    required this.data,
  });

  Map<String, dynamic> toJson() => _$ProductsInCategoryDtoToJson(this);

  factory ProductsInCategoryDto.fromJson(Map<String, dynamic> source) {
    return _$ProductsInCategoryDtoFromJson(source);
  }
}
