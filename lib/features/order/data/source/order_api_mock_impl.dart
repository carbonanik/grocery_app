import 'package:instant_grrocery_delivery/core/simulate_fetch.dart';
import 'package:instant_grrocery_delivery/features/order/data/model/order.dart';
import 'package:instant_grrocery_delivery/features/order/data/source/order_api.dart';
import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';
import 'package:instant_grrocery_delivery/features/order/data/model/dtos/order_create.dart';
import 'package:instant_grrocery_delivery/features/order/data/model/order_item/order_item.dart';

class OrderApiMockImpl extends OrderApi {
  // Function to create a new order
  @override
  Future<Order> createOrder(
    OrderCreate createOrder,
    AuthResponse authUser,
  ) async {
    await simulateFetch();
    final order = Order(
      id: orderJson.length + 1,
      orderItems: createOrder.orderItems
          .map((e) => OrderItem(product: e.product, count: e.count))
          .toList(),
      count: createOrder.count,
      totalPrice: createOrder.totalPrice,
      orderDate: createOrder.orderDate,
      orderStatus: "Processing",
      coupons: createOrder.coupons,
    );
    orderJson.add(order.toJson());
    return order;
  }

  // Function to fetch all orders from the API
  @override
  Future<List<Order>> getOrders() async {
    await simulateFetch();
    return orderJson.map((e) => Order.fromJson(e)).toList();
  }
}

final orderJson = [];
