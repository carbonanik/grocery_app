// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => CategoryDto(
      id: json['id'] as int,
      attributes:
          CategorySubDto.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryDtoToJson(CategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.toJson(),
    };

CategorySubDto _$CategorySubDtoFromJson(Map<String, dynamic> json) =>
    CategorySubDto(
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      products: json['products'] == null
          ? null
          : ProductsInCategoryDto.fromJson(
              json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategorySubDtoToJson(CategorySubDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'products': instance.products?.toJson(),
    };

ProductsInCategoryDto _$ProductsInCategoryDtoFromJson(
        Map<String, dynamic> json) =>
    ProductsInCategoryDto(
      data: (json['data'] as List<dynamic>)
          .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsInCategoryDtoToJson(
        ProductsInCategoryDto instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
