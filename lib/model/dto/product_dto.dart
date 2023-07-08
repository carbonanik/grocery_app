// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:instant_grrocery_delivery/model/product.dart';

part 'product_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductDto {
  final int id;
  final ProductDtoSub attributes;
  ProductDto({
    required this.id,
    required this.attributes,
  });

  Product getProduct() {
    return Product(
      id: id,
      price: attributes.price,
      name: attributes.name,
      description: attributes.description,
      image: attributes.image,
      weight: attributes.weight,
    );
  }

  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);

  factory ProductDto.fromJson(Map<String, dynamic> source) {
    return _$ProductDtoFromJson(source);
  }
}

@JsonSerializable(explicitToJson: true)
class ProductDtoSub {
  final double price;
  final String name;
  final String description;
  final String image;
  final String weight;
  ProductDtoSub({
    required this.price,
    required this.name,
    required this.description,
    required this.image,
    required this.weight,
  });

  Map<String, dynamic> toJson() => _$ProductDtoSubToJson(this);

  factory ProductDtoSub.fromJson(Map<String, dynamic> source) {
    return _$ProductDtoSubFromJson(source);
  }
}
