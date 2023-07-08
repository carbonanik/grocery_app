// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => ProductDto(
      id: json['id'] as int,
      attributes:
          ProductDtoSub.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.toJson(),
    };

ProductDtoSub _$ProductDtoSubFromJson(Map<String, dynamic> json) =>
    ProductDtoSub(
      price: (json['price'] as num).toDouble(),
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      weight: json['weight'] as String,
    );

Map<String, dynamic> _$ProductDtoSubToJson(ProductDtoSub instance) =>
    <String, dynamic>{
      'price': instance.price,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'weight': instance.weight,
    };
