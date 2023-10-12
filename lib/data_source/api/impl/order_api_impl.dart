import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:instant_grrocery_delivery/data_source/api/order_api.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/extensions.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/header.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/paths.dart';
import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';
import 'package:instant_grrocery_delivery/model/order/dtos/order_create.dart';
import 'package:instant_grrocery_delivery/model/order/dtos/order_dto.dart';

import '../../../model/order/order.dart';

class OrderApiImpl extends OrderApi {
  // Function to create a new order
  @override
  Future<Order> createOrder(OrderCreate createOrder, AuthResponse authUser) async {

    OrderCreateDto createOrderDto = OrderCreateDto(
      count: createOrder.count,
      totalPrice: createOrder.totalPrice,
      orderDate: createOrder.orderDate,
      orderItems: createOrder.orderItems.map((e) => OrderItemCreateDto(count: e.count, product: e.product)).toList(),
      coupons: createOrder.coupons,
      user: UserInOrderCreateDto(connect: [createOrder.userId]),
    );

    final createOrderJson = {"data": createOrderDto.toJson()};

    final response = await http.post(
      getUri(path: ApiPath.order),
      headers: getHeader(token: authUser),
      body: json.encode(createOrderJson),
    );

    if (response.ok) {
      return OrderReadDto.fromJson(
        json.decode(response.body)['data'],
      ).toOrder();
    } else {
      throw Exception('Failed to create order');
    }
  }

  // Function to fetch all orders from the API
  @override
  Future<List<Order>> getOrders() async {
    final response = await http.get(getUri(path: ApiPath.order));
    if (response.statusCode == 200) {
      final Iterable data = json.decode(response.body);
      List<Order> orders =
      List<Order>.from(data.map((model) => Order.fromJson(model)));
      return orders;
    } else {
      throw Exception('Failed to fetch orders');
    }
  }
}
