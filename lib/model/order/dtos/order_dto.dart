import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instant_grrocery_delivery/model/order/order.dart';
import 'package:instant_grrocery_delivery/model/order/order_item/order_item.dart';
import 'package:instant_grrocery_delivery/model/product/dto/product_dto.dart';

import '../../coupon/coupon.dart';
import '../../product/product.dart';

part 'order_dto.freezed.dart';

part 'order_dto.g.dart';

@freezed
abstract class OrderReadDto with _$OrderReadDto {
  const factory OrderReadDto({
    required int id,
    required OrderSubReadDto attributes,
  }) = _OrderReadDto;

  factory OrderReadDto.fromJson(Map<String, dynamic> source) =>
      _$OrderReadDtoFromJson(source);
}

extension OrderReadDtoX on OrderReadDto {
  Order toOrder() => Order(
    id: id,
    orderItems: (attributes.orderItems ?? [])
        .map((e) => e.toOrderItem())
        .toList(),
    count: attributes.count ?? 0,
    totalPrice: attributes.totalPrice ?? '',
    orderDate: attributes.orderDate ?? '',
    orderStatus: attributes.orderStatus ?? '',
    coupons: attributes.coupons ?? [],
  );
}

@freezed
abstract class OrderSubReadDto with _$OrderSubReadDto {
  const factory OrderSubReadDto({
    required int count,
    required String totalPrice,
    required String orderDate,
    required String orderStatus,
    required List<OrderItemReadDto> orderItems,
    required List<Coupon> coupons,
    required UserInOrderReadDto user,
  }) = _OrderSubReadDto;

  factory OrderSubReadDto.fromJson(Map<String, dynamic> source) =>
      _$OrderSubReadDtoFromJson(source);
}

@freezed
abstract class OrderItemReadDto with _$OrderItemReadDto {
  const factory OrderItemReadDto({
    required int count,
    required ProductDto product,
  }) = _OrderItemReadDto;

  factory OrderItemReadDto.fromJson(Map<String, dynamic> source) =>
      _$OrderItemReadDtoFromJson(source);
}

extension OrderItemReadDtoX on OrderItemReadDto {
  OrderItem toOrderItem() =>
      OrderItem(count: count, product: product.toProduct());
}

@freezed
abstract class UserInOrderReadDto with _$UserInOrderReadDto {
  const factory UserInOrderReadDto({required UserReadDto data}) =
      _UserInOrderReadDto;

  factory UserInOrderReadDto.fromJson(Map<String, dynamic> source) =>
      _$UserInOrderReadDtoFromJson(source);
}

@freezed
abstract class UserReadDto with _$UserReadDto {
  const factory UserReadDto({
    required int id,
    required UserSubReadDto attributes,
  }) = _UserReadDto;

  factory UserReadDto.fromJson(Map<String, dynamic> source) =>
      _$UserReadDtoFromJson(source);
}

@freezed
abstract class UserSubReadDto with _$UserSubReadDto {
  const factory UserSubReadDto({
    required String username,
    required String email,
    required String provider,
    required String confirmed,
    required String blocked,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String fullName,
    required String phone,
    required bool isActive,
  }) = _UserSubReadDto;

  factory UserSubReadDto.fromJson(Map<String, dynamic> source) =>
      _$UserSubReadDtoFromJson(source);
}
