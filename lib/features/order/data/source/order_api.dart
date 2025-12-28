import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';
import 'package:instant_grrocery_delivery/features/order/data/model/dtos/order_create.dart';
import 'package:instant_grrocery_delivery/features/order/data/model/order.dart';

abstract class OrderApi {
  Future<Order> createOrder(OrderCreate createOrder, AuthResponse authUser);

  Future<List<Order>> getOrders();
}

