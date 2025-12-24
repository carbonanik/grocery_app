import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';

part 'category.freezed.dart';

part 'category.g.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    required int id,
    required String name,
    required String image,
    required String description,
    List<Product>? products,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> source) =>
      _$CategoryFromJson(source);
}
