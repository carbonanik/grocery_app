import 'package:hive_ce/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';
import 'package:instant_grrocery_delivery/model/coupon/coupon.dart';
import 'package:instant_grrocery_delivery/model/order/order_item/order_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';

part 'order.g.dart';

@freezed
class Order extends HiveObject with _$Order {

  Order._();

  @HiveType(typeId: orderHiveTypeId, adapterName: orderAdapterName)
  factory Order({

    @HiveField(0) required int id,
    @HiveField(1) int? userId,
    @HiveField(2) required List<OrderItem> orderItems,
    @HiveField(3) required int count,
    @HiveField(4) required String totalPrice,
    @HiveField(5) required String orderDate,
    @HiveField(6) required String orderStatus,
    @HiveField(7) required List<Coupon> coupons,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

// @freezed
// abstract class OrderProcess with _$OrderProcess {
//   const factory OrderProcess.empty() = _OrderProcessEmpty;
//
//   const factory OrderProcess.loading() = _OrderProcessLoading;
//
//   const factory OrderProcess.data(Order value) = _OrderProcessData;
//
//   const factory OrderProcess.error(Exception e) = _OrderProcessError;
// }
//
// extension OrderProcessX on OrderProcess {
//   get isData => this is _OrderProcessData;
//   get isLoading => this is _OrderProcessLoading;
// }

