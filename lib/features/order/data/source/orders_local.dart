import 'package:instant_grrocery_delivery/features/order/data/model/order.dart';

abstract class OrderLocal {
  Future<List<Order>> getOrders();

  Future<bool> addOrder(Order order);

  Future<Order?> getSingleOrder(int orderId);

  Future<bool> removeOrder(int orderId);
}

