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
      id: json['id'],
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
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['code'] = code;
    data['discount'] = discount;
    data['fixed'] = fixed;
    data['status'] = status;
    return data;
  }
}