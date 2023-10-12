// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDtoImpl _$$ProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductDtoImpl(
      id: json['id'] as int,
      price: (json['price'] as num).toDouble(),
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      weight: json['weight'] as String,
    );

Map<String, dynamic> _$$ProductDtoImplToJson(_$ProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'weight': instance.weight,
    };

_$ProductDtoSubImpl _$$ProductDtoSubImplFromJson(Map<String, dynamic> json) =>
    _$ProductDtoSubImpl(
      price: (json['price'] as num).toDouble(),
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      weight: json['weight'] as String,
    );

Map<String, dynamic> _$$ProductDtoSubImplToJson(_$ProductDtoSubImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'weight': instance.weight,
    };
