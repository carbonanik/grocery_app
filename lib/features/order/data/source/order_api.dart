import 'package:instant_grrocery_delivery/features/auth/domain/app_user.dart';
import 'package:instant_grrocery_delivery/features/order/data/model/dtos/order_create.dart';
import 'package:instant_grrocery_delivery/features/order/data/model/order.dart';

abstract class OrderApi {
  Future<Order> createOrder(OrderCreate createOrder, AppUser authUser);

  Future<List<Order>> getOrders();
}
