// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'order_create.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class OrderCreate {
  final int? userId;
  final List<OrderItemCreate> orderItems;
  final int count;
  final String totalPrice;
  final String orderDate;
  final String orderStatus;
  final List<CouponCreate> coupons;

  OrderCreate({
    this.userId,
    required this.orderItems,
    required this.count,
    required this.totalPrice,
    required this.orderDate,
    required this.orderStatus,
    required this.coupons,
  });

  Map<String, dynamic> toJson() => _$OrderCreateToJson(this);

  factory OrderCreate.fromJson(Map<String, dynamic> source) =>
      _$OrderCreateFromJson(source);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class OrderItemCreate {
  final int productId;
  final int count;

  OrderItemCreate({
    required this.productId,
    required this.count,
  });

  Map<String, dynamic> toJson() => _$OrderItemCreateToJson(this);

  factory OrderItemCreate.fromJson(Map<String, dynamic> source) =>
      _$OrderItemCreateFromJson(source);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class CouponCreate {
  int id;

  CouponCreate({
    required this.id,
  });

  Map<String, dynamic> toJson() => _$CouponCreateToJson(this);

  factory CouponCreate.fromJson(Map<String, dynamic> source) =>
      _$CouponCreateFromJson(source);
}
