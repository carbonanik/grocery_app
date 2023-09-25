import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/order/order.dart';

abstract class OrderApi {
  Future<Order> createOrder(Map<String, dynamic> orderData, AuthResponse authUser);

  Future<List<Order>> getOrders();
}
