import 'dart:convert';

import 'package:get/get_utils/get_utils.dart';
import 'package:http/http.dart' as http;

import '../../model/order.dart';

class OrderApi {
  static const String baseUrl = '143.244.169.231:8002';

  // Function to create a new order
  Future<Order> createOrder(Map<String, dynamic> orderData) async {
    final response = await http.post(Uri.http(baseUrl, '/order'),
        headers: {"Content-Type": "application/json"},
        body: json.encode(orderData));
    if (response.statusCode == 201) {
      return Order.fromJson(json.decode(response.body));
    } else {
      print(response.body);
      throw Exception('Failed to create order');
    }
  }

  // Function to fetch all orders from the API
  Future<List<Order>> getOrders() async {
    final response = await http.get(Uri.http(baseUrl, 'order'));
    if (response.statusCode == 200) {
      final Iterable data = json.decode(response.body);
      List<Order> orders =
          List<Order>.from(data.map((model) => Order.fromJson(model)));
      return orders;
    } else {
      throw Exception('Failed to fetch orders');
    }
  }

  // Future<Order> getOrdersById(int orderId) async {
  //   final response = await http.get(Uri.http(baseUrl, '/order/$orderId'));
  //   if (response.statusCode == 200) {
  //     return Order.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Failed to fetch orders');
  //   }
  // }

  // Function to update an existing order
  // Future<bool> updateOrder(int orderId, Map<String, dynamic> orderData) async {
  //   final response = await http.put(
  //     Uri.http(baseUrl, '/order/$orderId'),
  //     headers: {"Content-Type": "application/json"},
  //     body: json.encode(orderData),
  //   );
  //   if (response.statusCode == 200) {
  //     return true;
  //   } else {
  //     throw Exception('Failed to update order');
  //   }
  // }

  // // Function to delete an existing order
  // Future<bool> deleteOrder(int orderId) async {
  //   final response = await http.delete(Uri.http(baseUrl, '/order/$orderId'));
  //   if (response.statusCode == 204) {
  //     return true;
  //   } else {
  //     throw Exception('Failed to delete order');
  //   }
  // }
}
