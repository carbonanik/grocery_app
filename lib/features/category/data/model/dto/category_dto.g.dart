// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => _CategoryDto(
  id: (json['id'] as num).toInt(),
  attributes: CategorySubDto.fromJson(
    json['attributes'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CategoryDtoToJson(_CategoryDto instance) =>
    <String, dynamic>{'id': instance.id, 'attributes': instance.attributes};

_CategorySubDto _$CategorySubDtoFromJson(Map<String, dynamic> json) =>
    _CategorySubDto(
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      products: json['products'] == null
          ? null
          : ProductsInCategoryDto.fromJson(
              json['products'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$CategorySubDtoToJson(_CategorySubDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'products': instance.products,
    };

_ProductsInCategoryDto _$ProductsInCategoryDtoFromJson(
  Map<String, dynamic> json,
) => _ProductsInCategoryDto(
  data: (json['data'] as List<dynamic>)
      .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProductsInCategoryDtoToJson(
  _ProductsInCategoryDto instance,
) => <String, dynamic>{'data': instance.data};
