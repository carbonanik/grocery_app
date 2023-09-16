import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/order.dart';

abstract class OrderApi {
  Future<Order> createOrder(Map<String, dynamic> orderData, AuthResponseDto authUser);

  Future<List<Order>> getOrders();
}
