class Coupon {
  int id;
  String title;
  String description;
  String code;
  double discount;
  double fixed;
  String status;

  Coupon({
    required this.id,
    required this.title,
    required this.description,
    required this.code,
    required this.discount,
    required this.fixed,
    required this.status,
  });

  factory Coupon.fromJson(Map<String, dynamic> json) {
    return Coupon(
      id: json['_id'],
      title: json['title'],
      description: json['description'],
      code: json['code'],
      discount: json['discount'].toDouble(),
      fixed: json['fixed'].toDouble(),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['code'] = code;
    data['discount'] = discount;
    data['fixed'] = fixed;
    data['status'] = status;
    return data;
  }
}

const String couponTable = "coupon";

class CouponFields {
  static const id = "_id";
  static const title = "title";
  static const description = "description";
  static const code = "code";
  static const discount = "discount";
  static const fixed = "fixed";
  static const status = "status";
}