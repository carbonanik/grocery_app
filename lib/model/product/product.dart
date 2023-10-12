import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed
class Product extends HiveObject with _$Product {

  Product._();

  @HiveType(typeId: productHiveTypeId, adapterName: productAdapterName)
  factory Product({
    @HiveField(0) required int id,
    @HiveField(1) required double price,
    @HiveField(2) required String name,
    @HiveField(3) required String description,
    @HiveField(4) required String image,
    @HiveField(5) required String weight,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}