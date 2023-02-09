class CartCoupon{
  int? id;
  int couponId;
  int cartId;
  String title;
  String description;
  String code;
  double discount;
  double fixed;
  String status;
  String addedTime;

  CartCoupon({
    this.id,
    required this.couponId,
    required this.cartId,
    required this.title,
    required this.description,
    required this.code,
    required this.discount,
    required this.fixed,
    required this.status,
    required this.addedTime,
  });

  CartCoupon copyWith({
    int? id,
    int? couponId,
    int? cartId,
    String? title,
    String? description,
    String? code,
    double? discount,
    double? fixed,
    String? status,
    String? addedTime,
  }){
    return CartCoupon(
      id: id ?? this.id,
      couponId: couponId ?? this.couponId,
      cartId: cartId ?? this.cartId,
      title: title ?? this.title,
      description: description ?? this.description,
      code: code ?? this.code,
      discount: discount ?? this.discount,
      fixed: fixed ?? this.fixed,
      status: status ?? this.status,
      addedTime: addedTime ?? this.addedTime,
    );
  }

  factory CartCoupon.fromJson(Map<String, dynamic> json){
    return CartCoupon(
      id: json[CartCouponFields.id],
      couponId: json[CartCouponFields.couponId],
      cartId: json[CartCouponFields.cartId],
      title: json[CartCouponFields.title],
      description: json[CartCouponFields.description],
      code: json[CartCouponFields.code],
      discount: json[CartCouponFields.discount].toDouble(),
      fixed: json[CartCouponFields.fixed].toDouble(),
      status: json[CartCouponFields.status],
      addedTime: json[CartCouponFields.addedTime],
    );
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data[CartCouponFields.id] = id;
    data[CartCouponFields.couponId] = couponId;
    data[CartCouponFields.cartId] = cartId;
    data[CartCouponFields.title] = title;
    data[CartCouponFields.description] = description;
    data[CartCouponFields.code] = code;
    data[CartCouponFields.discount] = discount;
    data[CartCouponFields.fixed] = fixed;
    data[CartCouponFields.status] = status;
    data[CartCouponFields.addedTime] = addedTime;
    return data;
  }
}

const String cartCouponTable = "coupon";

class CartCouponFields {
  static const id = "_id";
  static const couponId = "coupon_id";
  static const cartId = "cart_id";
  static const title = "title";
  static const description = "description";
  static const code = "code";
  static const discount = "discount";
  static const fixed = "fixed";
  static const status = "status";
  static const addedTime = "added_time";
}