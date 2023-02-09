
class CartItem {
  final int? id;
  final int cartId;
  final int quantity;
  final String addedTime;
  final int productId;
  final double price;
  final String name;
  final String image;
  final String weight;

  CartItem({
    this.id,
    required this.cartId,
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
    int? cartId,
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
      cartId: cartId ?? this.cartId,
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
      id: json[CartItemFields.id],
      cartId: json[CartItemFields.cartId],
      quantity: json[CartItemFields.quantity],
      addedTime: json[CartItemFields.addedTime],
      productId: json[CartItemFields.productId],
      price: json[CartItemFields.price],
      name: json[CartItemFields.name],
      image: json[CartItemFields.image],
      weight: json[CartItemFields.weight],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[CartItemFields.id] = id;
    data[CartItemFields.cartId] = cartId;
    data[CartItemFields.quantity] = quantity;
    data[CartItemFields.addedTime] = addedTime;
    data[CartItemFields.productId] = productId;
    data[CartItemFields.price] = price;
    data[CartItemFields.name] = name;
    data[CartItemFields.image] = image;
    data[CartItemFields.weight] = weight;

    return data;
  }
}

const String cartItemTable = 'cart_item';

class CartItemFields {

  static const values = [
    id,
    cartId, 
    quantity,
    productId,
    addedTime,
    price,
    name,
    image,
    weight,
  ];

  static const String id = '_id';
  static const String cartId = 'cart_id';
  static const String quantity = 'quantity';
  static const String productId = 'productId';
  static const String addedTime = 'addedTime';
  static const String price = 'price';
  static const String name = 'name';
  static const String image = 'image';
  static const String weight = 'weight';
}