import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';


part 'coupon.g.dart';
part 'coupon.freezed.dart';

@freezed
class Coupon with _$Coupon {

  const factory Coupon({
    required int id,
    required String title,
    required String description,
    required String code,
    required double discount,
    required double fixed,
    required String status,
  }) = _Coupon;


  factory Coupon.fromJson(Map<String, Object?> json) => _$CouponFromJson(json);
}
