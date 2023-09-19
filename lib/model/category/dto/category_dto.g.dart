// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryDto _$$_CategoryDtoFromJson(Map<String, dynamic> json) =>
    _$_CategoryDto(
      id: json['id'] as int,
      attributes:
          CategorySubDto.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CategoryDtoToJson(_$_CategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$_CategorySubDto _$$_CategorySubDtoFromJson(Map<String, dynamic> json) =>
    _$_CategorySubDto(
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      products: json['products'] == null
          ? null
          : ProductsInCategoryDto.fromJson(
              json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CategorySubDtoToJson(_$_CategorySubDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'products': instance.products,
    };

_$_ProductsInCategoryDto _$$_ProductsInCategoryDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ProductsInCategoryDto(
      data: (json['data'] as List<dynamic>)
          .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductsInCategoryDtoToJson(
        _$_ProductsInCategoryDto instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
