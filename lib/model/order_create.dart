// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:instant_grrocery_delivery/model/coupon.dart';
import 'package:instant_grrocery_delivery/model/product.dart';
import 'package:instant_grrocery_delivery/ui/widget/coupon_item.dart';

part 'order_create.g.dart';

// @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
// class OrderCreate {
//   final int? userId;
//   final List<OrderItemCreate> orderItems;
//   final int count;
//   final String totalPrice;
//   final String orderDate;
//   final String orderStatus;
//   final List<CouponCreate> coupons;

//   OrderCreate({
//     this.userId,
//     required this.orderItems,
//     required this.count,
//     required this.totalPrice,
//     required this.orderDate,
//     required this.orderStatus,
//     required this.coupons,
//   });

//   Map<String, dynamic> toJson() => _$OrderCreateToJson(this);

//   factory OrderCreate.fromJson(Map<String, dynamic> source) =>
//       _$OrderCreateFromJson(source);
// }

// @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
// class OrderItemCreate {
//   final int productId;
//   final int count;

//   OrderItemCreate({
//     required this.productId,
//     required this.count,
//   });

//   Map<String, dynamic> toJson() => _$OrderItemCreateToJson(this);

//   factory OrderItemCreate.fromJson(Map<String, dynamic> source) =>
//       _$OrderItemCreateFromJson(source);
// }

// @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
// class CouponCreate {
//   int id;

//   CouponCreate({
//     required this.id,
//   });

//   Map<String, dynamic> toJson() => _$CouponCreateToJson(this);

//   factory CouponCreate.fromJson(Map<String, dynamic> source) =>
//       _$CouponCreateFromJson(source);
// }

@JsonSerializable(explicitToJson: true)
class OrderCreateDto {
  final int count;
  final String totalPrice;
  final String orderDate;
  final List<OrderItemCreateDto> orderItems;
  final List<Coupon> coupons;
  final UserInOrderCreateDto user;
  OrderCreateDto({
    required this.count,
    required this.totalPrice,
    required this.orderDate,
    required this.orderItems,
    required this.coupons,
    required this.user,
  });

  Map<String, dynamic> toJson() => _$OrderCreateDtoToJson(this);

  factory OrderCreateDto.fromJson(Map<String, dynamic> source) =>
      _$OrderCreateDtoFromJson(source);
}

@JsonSerializable(explicitToJson: true)
class OrderItemCreateDto {
  final int count;
  final Product product;
  OrderItemCreateDto({
    required this.count,
    required this.product,
  });

  Map<String, dynamic> toJson() => _$OrderItemCreateDtoToJson(this);

  factory OrderItemCreateDto.fromJson(Map<String, dynamic> source) =>
      _$OrderItemCreateDtoFromJson(source);
}

@JsonSerializable(explicitToJson: true)
class UserInOrderCreateDto {
  final List<int> connect;
  UserInOrderCreateDto({
    required this.connect,
  });

  Map<String, dynamic> toJson() => _$UserInOrderCreateDtoToJson(this);

  factory UserInOrderCreateDto.fromJson(Map<String, dynamic> source) =>
      _$UserInOrderCreateDtoFromJson(source);
}

// @JsonSerializable(explicitToJson: true)
// class CouponCreateDto {}
