import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_ce/hive.dart';
import 'package:instant_grrocery_delivery/core/api/local_constants.dart';

part 'coupon.g.dart';
part 'coupon.freezed.dart';

@freezed
abstract class Coupon extends HiveObject with _$Coupon {
  Coupon._();

  @HiveType(typeId: couponHiveTypeId, adapterName: couponAdapterName)
  factory Coupon({
    @HiveField(0) required int id,
    @HiveField(1) required String title,
    @HiveField(2) required String description,
    @HiveField(3) required String code,
    @HiveField(4) required double discount,
    @HiveField(5) required double fixed,
    @HiveField(6) required String status,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, Object?> json) => _$CouponFromJson(json);
}

