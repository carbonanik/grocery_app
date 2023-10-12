import '../../model/order/order.dart';

abstract class OrderLocal {
  List<Order> getOrders();

  bool addOrder(Order order);

  Order? getSingleOrder(int orderId);

  bool removeOrder(int orderId);
}
