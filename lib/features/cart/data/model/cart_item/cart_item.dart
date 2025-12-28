import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:instant_grrocery_delivery/core/api/local_constants.dart';
import 'package:instant_grrocery_delivery/features/product/data/model/product.dart';

part 'cart_item.freezed.dart';

part 'cart_item.g.dart';

@freezed
abstract class CartItem extends HiveObject with _$CartItem {
  CartItem._();

  @HiveType(typeId: cartItemHiveTypeId, adapterName: cartItemAdapterName)
  factory CartItem({
    @HiveField(0) required int id,
    @HiveField(1) required Product product,
    @HiveField(2) required int count,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> source) =>
      _$CartItemFromJson(source);
}

