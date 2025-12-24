import 'package:instant_grrocery_delivery/data_source/api/mock_impl/simulate_fetch.dart';
import 'package:instant_grrocery_delivery/data_source/api/order_api.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/order/dtos/order_create.dart';
import 'package:instant_grrocery_delivery/model/order/order_item/order_item.dart';

import '../../../model/order/order.dart';

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
