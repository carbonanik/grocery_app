import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed
class Product with _$Product {

  const factory Product({
    required int id,
    required double price,
    required String name,
    required String description,
    required String image,
    required String weight,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
