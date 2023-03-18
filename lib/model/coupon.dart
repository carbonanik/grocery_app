// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'coupon.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Coupon {
  int id;
  String title;
  String description;
  String code;
  double discount;
  double fixed;
  String status;

  Coupon({
    required this.id,
    required this.title,
    required this.description,
    required this.code,
    required this.discount,
    required this.fixed,
    required this.status,
  });

  Map<String, dynamic> toJson() => _$CouponToJson(this);

  factory Coupon.fromJson(Map<String, dynamic> source) =>
      _$CouponFromJson(source);
}
