// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import '../coupon.dart';
import '../order.dart';
import '../order_item.dart';
import '../product.dart';

part 'order_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderReadDto {
  final int id;
  final OrderSubReadDto attributes;
  OrderReadDto({
    required this.id,
    required this.attributes,
  });

  Map<String, dynamic> toJson() => _$OrderReadDtoToJson(this);

  factory OrderReadDto.fromJson(Map<String, dynamic> source) =>
      _$OrderReadDtoFromJson(source);

  Order toOrder() => Order(
        id: id,
        orderItems: (attributes.orderItems ?? [])
            .map(
              (e) => e.toOrderItem(),
            )
            .toList(),
        count: attributes.count ?? 0,
        totalPrice: attributes.totalPrice ?? '',
        orderDate: attributes.orderDate ?? '',
        orderStatus: attributes.orderStatus ?? '',
        coupons: attributes.coupons ?? [],
      );
}

@JsonSerializable(explicitToJson: true)
class OrderSubReadDto {
  final int? count;
  final String? totalPrice;
  final String? orderDate;
  final String? orderStatus;
  final List<OrderItemReadDto>? orderItems;
  final List<Coupon>? coupons;
  final UserInOrderReadDto? user;
  OrderSubReadDto({
    required this.count,
    required this.totalPrice,
    required this.orderDate,
    required this.orderStatus,
    required this.orderItems,
    required this.coupons,
    required this.user,
  });

  Map<String, dynamic> toJson() => _$OrderSubReadDtoToJson(this);

  factory OrderSubReadDto.fromJson(Map<String, dynamic> source) =>
      _$OrderSubReadDtoFromJson(source);
}

@JsonSerializable(explicitToJson: true)
class OrderItemReadDto {
  final int count;
  final Product product;
  OrderItemReadDto({
    required this.count,
    required this.product,
  });

  OrderItem toOrderItem() => OrderItem(
        count: count,
        product: product,
      );

  Map<String, dynamic> toJson() => _$OrderItemReadDtoToJson(this);

  factory OrderItemReadDto.fromJson(Map<String, dynamic> source) =>
      _$OrderItemReadDtoFromJson(source);
}

@JsonSerializable(explicitToJson: true)
class UserInOrderReadDto {
  final UserReadDto data;
  UserInOrderReadDto({
    required this.data,
  });

  Map<String, dynamic> toJson() => _$UserInOrderReadDtoToJson(this);

  factory UserInOrderReadDto.fromJson(Map<String, dynamic> source) =>
      _$UserInOrderReadDtoFromJson(source);
}

@JsonSerializable(explicitToJson: true)
class UserReadDto {
  final int id;
  final UserSubReadDto attributes;
  UserReadDto({required this.id, required this.attributes});

  Map<String, dynamic> toJson() => _$UserReadDtoToJson(this);

  factory UserReadDto.fromJson(Map<String, dynamic> source) =>
      _$UserReadDtoFromJson(source);
}

@JsonSerializable(explicitToJson: true)
class UserSubReadDto {
  final String username;
  final String email;
  final String provider;
  final String confirmed;
  final String blocked;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String fullName;
  final String phone;
  final bool isActive;

  UserSubReadDto({
    required this.username,
    required this.email,
    required this.provider,
    required this.confirmed,
    required this.blocked,
    required this.createdAt,
    required this.updatedAt,
    required this.fullName,
    required this.phone,
    required this.isActive,
  });

  Map<String, dynamic> toJson() => _$UserSubReadDtoToJson(this);

  factory UserSubReadDto.fromJson(Map<String, dynamic> source) =>
      _$UserSubReadDtoFromJson(source);
}
