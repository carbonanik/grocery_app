
class CartItem {
  final int? id;
  final int quantity;
  final String addedTime;
  final int productId;
  final double price;
  final String name;
  final String image;
  final String weight;

  CartItem({
    this.id,
    required this.quantity,
    required this.addedTime,
    required this.productId,
    required this.price,
    required this.name,
    required this.image,
    required this.weight,
  });

  CartItem copyWith({
    int? id,
    int? quantity,
    String? addedTime,
    int? productId,
    double? price,
    String? name,
    String? image,
    String? weight,
  }) {
    return CartItem(
      id: id ?? this.id,
      quantity: quantity ?? this.quantity,
      addedTime: addedTime ?? this.addedTime,
      productId: productId ?? this.productId,
      price: price ?? this.price,
      name: name ?? this.name,
      image: image ?? this.image,
      weight: weight ?? this.weight,
    );
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      id: json['_id'],
      quantity: json['quantity'],
      addedTime: json['addedTime'],
      productId: json['productId'],
      price: json['price'].toDouble(),
      name: json['name'],
      image: json['image'],
      weight: json['weight'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = id;
    data['quantity'] = quantity;
    data['addedTime'] = addedTime;
    data['productId'] = productId;
    data['price'] = price;
    data['name'] = name;
    data['image'] = image;
    data['weight'] = weight;

    return data;
  }
}

const String cartItemTable = 'cart_item';

class CartItemFields {

  static const values = [
    CartItemFields.id,
    CartItemFields.quantity,
    CartItemFields.productId,
    CartItemFields.addedTime,
    CartItemFields.price,
    CartItemFields.name,
    CartItemFields.image,
    CartItemFields.weight,
  ];

  static const String id = '_id';
  static const String quantity = 'quantity';
  static const String productId = 'productId';
  static const String addedTime = 'addedTime';
  static const String price = 'price';
  static const String name = 'name';
  static const String image = 'image';
  static const String weight = 'weight';
}