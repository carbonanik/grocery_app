import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';

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
