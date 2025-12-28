import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_ce/hive.dart';
import 'package:instant_grrocery_delivery/core/api/local_constants.dart';
import 'package:instant_grrocery_delivery/features/product/data/model/product.dart';

part 'order_item.freezed.dart';

part 'order_item.g.dart';

@freezed
abstract class OrderItem extends HiveObject with _$OrderItem {
  OrderItem._();

  @HiveType(typeId: orderItemHiveTypeId, adapterName: orderItemAdapterName)
  factory OrderItem({
    @HiveField(0) required Product product,
    @HiveField(1) required int count,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, Object?> json) =>
      _$OrderItemFromJson(json);
}

