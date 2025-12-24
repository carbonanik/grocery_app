// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => _ProductDto(
  id: (json['id'] as num).toInt(),
  price: (json['price'] as num).toDouble(),
  name: json['name'] as String,
  description: json['description'] as String,
  image: json['image'] as String,
  weight: json['weight'] as String,
);

Map<String, dynamic> _$ProductDtoToJson(_ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'weight': instance.weight,
    };

_ProductDtoSub _$ProductDtoSubFromJson(Map<String, dynamic> json) =>
    _ProductDtoSub(
      price: (json['price'] as num).toDouble(),
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      weight: json['weight'] as String,
    );

Map<String, dynamic> _$ProductDtoSubToJson(_ProductDtoSub instance) =>
    <String, dynamic>{
      'price': instance.price,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'weight': instance.weight,
    };
