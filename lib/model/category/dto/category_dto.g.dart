// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDtoImpl _$$CategoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDtoImpl(
      id: (json['id'] as num).toInt(),
      attributes:
          CategorySubDto.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryDtoImplToJson(_$CategoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$CategorySubDtoImpl _$$CategorySubDtoImplFromJson(Map<String, dynamic> json) =>
    _$CategorySubDtoImpl(
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      products: json['products'] == null
          ? null
          : ProductsInCategoryDto.fromJson(
              json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategorySubDtoImplToJson(
        _$CategorySubDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'products': instance.products,
    };

_$ProductsInCategoryDtoImpl _$$ProductsInCategoryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductsInCategoryDtoImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductsInCategoryDtoImplToJson(
        _$ProductsInCategoryDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
