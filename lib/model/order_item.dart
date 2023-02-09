import 'product.dart';

class OrderItem {
  final int id;
  final int orderId;
  final Product product;
  final int quantity;

  OrderItem({
    required this.id,
    required this.orderId,
    required this.product,
    required this.quantity,
  });

  static OrderItem fromJson(Map<String, dynamic> json) {
    return OrderItem(
      id: json['id'],
      orderId: json['order_id'],
      quantity: json['quantity'],
      product: Product.fromJson(json['product']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['order_id'] = orderId;
    data['quantity'] = quantity;
    data['product'] = product.toJson();
    return data;
  }
}
