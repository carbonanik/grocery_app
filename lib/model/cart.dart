import 'cart_item.dart';
import 'coupon.dart';

class Cart {
  final int? id;
  final int totalQuantity;
  final List<CartItem> cartItems;
  final int count;
  final double totalPrice;
  final String firstItemDate;
  final String lastItemDate;
  final String orderStatus;
  final List<Coupon> coupon;

  Cart({
    this.id,
    required this.totalQuantity,
    required this.totalPrice,
    required this.cartItems,
    required this.count,
    required this.firstItemDate,
    required this.lastItemDate,
    required this.orderStatus,
    required this.coupon,
  });
}

const cartTable = 'cart_table';



