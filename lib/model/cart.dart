import 'cart_item.dart';
import 'coupon.dart';

class Cart {
  final int? id;
  final bool isActive;
  final int totalQuantity;
  final List<CartItem>? cartItems;
  final int count;
  final double totalPrice;
  final String firstItemDate;
  final String lastItemDate;
  final List<Coupon>? coupon;

  Cart({
    this.id,
    required this.isActive,
    required this.totalQuantity,
    required this.totalPrice,
    required this.count,
    required this.firstItemDate,
    required this.lastItemDate,
    this.cartItems,
    this.coupon,
  });

  static Cart fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json[CartFields.id],
      isActive: json[CartFields.isActive],
      totalQuantity: json[CartFields.totalQuantity],
      totalPrice: json[CartFields.totalPrice].toDouble(),
      // cartItems: (json[CartFields.cartItems] as List<dynamic>).map((e) => CartItem.fromJson(e)).toList(),
      count: json[CartFields.count],
      firstItemDate: json[CartFields.firstItemDate],
      lastItemDate: json[CartFields.lastItemDate],
      // coupon: (json[CartFields.coupon] as List<dynamic>).map((e) => Coupon.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[CartFields.id] = id;
    data[CartFields.isActive] = isActive;
    data[CartFields.totalQuantity] = totalQuantity;
    data[CartFields.totalPrice] = totalPrice;
    // data[CartFields.cartItems] = cartItems?.map((e) => e.toJson()).toList() ;
    data[CartFields.count] = count;
    data[CartFields.firstItemDate] = firstItemDate;
    data[CartFields.lastItemDate] = lastItemDate;
    // data[CartFields.coupon] = coupon?.map((e) => e.toJson()).toList();
    return data;
  }

  //copy with
  Cart copyWith({
    int? id,
    bool? isActive,
    int? totalQuantity,
    double? totalPrice,
    List<CartItem>? cartItems,
    int? count,
    String? firstItemDate,
    String? lastItemDate,
    List<Coupon>? coupon,
  }) {
    return Cart(
      id: id ?? this.id,
      isActive: isActive ?? this.isActive,
      totalQuantity: totalQuantity ?? this.totalQuantity,
      cartItems: cartItems ?? this.cartItems,
      count: count ?? this.count,
      totalPrice: totalPrice ?? this.totalPrice,
      firstItemDate: firstItemDate ?? this.firstItemDate,
      lastItemDate: lastItemDate ?? this.lastItemDate,
      coupon: coupon ?? this.coupon,
    );
  }
}

const cartTable = 'cart_table';

class CartFields {

  static const values = [
    id,
    isActive,
    totalQuantity,
    totalPrice,
    count,
    firstItemDate,
    lastItemDate,
  ];

  static const String id = 'id';
  static const String isActive = 'is_active';
  static const String totalQuantity = 'total_quantity';
  static const String totalPrice = 'total_price';
  static const String count = 'count';
  static const String firstItemDate = 'first_item_date';
  static const String lastItemDate = 'last_item_date';
}



