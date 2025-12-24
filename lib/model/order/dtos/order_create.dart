import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:instant_grrocery_delivery/model/coupon/coupon.dart';
import 'package:instant_grrocery_delivery/model/order/order_item/order_item.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';

part 'order_create.g.dart';
part 'order_create.freezed.dart';

@freezed
abstract class OrderCreate with _$OrderCreate {
  const factory OrderCreate({
    required int userId,
    required int count,
    required String totalPrice,
    required String orderDate,
    required List<OrderItem> orderItems,
    required List<Coupon> coupons,
  }) = _OrderCreate;

  factory OrderCreate.fromJson(Map<String, dynamic> source) =>
      _$OrderCreateFromJson(source);
}

@freezed
abstract class OrderCreateDto with _$OrderCreateDto {
  const factory OrderCreateDto({
    required int count,
    required String totalPrice,
    required String orderDate,
    required List<OrderItemCreateDto> orderItems,
    required List<Coupon> coupons,
    required UserInOrderCreateDto user,
  }) = _OrderCreateDto;

  factory OrderCreateDto.fromJson(Map<String, dynamic> source) =>
      _$OrderCreateDtoFromJson(source);
}

@freezed
abstract class OrderItemCreateDto with _$OrderItemCreateDto {
  const factory OrderItemCreateDto({
    required int count,
    required Product product,
  }) = _OrderItemCreateDto;

  factory OrderItemCreateDto.fromJson(Map<String, Object?> json) =>
      _$OrderItemCreateDtoFromJson(json);
}

@freezed
abstract class UserInOrderCreateDto with _$UserInOrderCreateDto {
  const factory UserInOrderCreateDto({required List<int> connect}) =
      _UserInOrderCreateDto;

  factory UserInOrderCreateDto.fromJson(Map<String, dynamic> source) =>
      _$UserInOrderCreateDtoFromJson(source);
}
