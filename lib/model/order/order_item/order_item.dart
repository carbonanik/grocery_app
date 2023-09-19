import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../../product/product.dart';

part 'order_item.freezed.dart';

part 'order_item.g.dart';

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    required Product product,
    required int count,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, Object?> json) => _$OrderItemFromJson(json);
}
