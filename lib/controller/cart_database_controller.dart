import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/model/product.dart';

import '../data_source/db/cart_database.dart';
import '../model/cart_item.dart';

class CartDatabaseController extends GetxController {
  final CartDatabase cartDatabase;

  CartDatabaseController({required this.cartDatabase});

  final cartList = <CartItem>[].obs;
  final currentProductQuantity = 0.obs;
  final totalPrice = 0.0.obs;
  final totalQuantity = 0.obs;


  void addItemToCart(CartItem item) async {
    await cartDatabase.insert(item);
    getCartList();
  }

  void calculateTotalPrice() {
    totalPrice.value = cartList.fold(0.0, (acc, item) => acc + item.price * item.quantity);
  }

  void calculateTotalQuantity() {
    totalQuantity.value = cartList.fold(0, (acc, item) => acc + item.quantity);
  }

  Future<CartItem?> getById(int? id) async {
    return await cartDatabase.getById(id);
  }

  Future<CartItem?> getByProductId(int productId) async {
    return await cartDatabase.getByProductId(productId);
  }

  getCartList() async {
    cartDatabase.getAll().then((value) {
      cartList.value = value;
      calculateTotalPrice();
      calculateTotalQuantity();
    });
  }

  updateCartItem(CartItem item) async {
    await cartDatabase.update(item);
    getCartList();
  }

  deleteCartItem(int itemId) async {
    await cartDatabase.delete(itemId);
    getCartList();
  }

  deleteCartItemByProductId(int productId) async {
    await cartDatabase.deleteByProductId(productId);
    getCartList();
  }

  deleteAllCartItems() async {
    await cartDatabase.deleteAll();
    getCartList();
  }

  increaseQuantity(Product product) async {
    currentProductQuantity.value = currentProductQuantity.value + 1;
    currentProductQuantity.value = currentProductQuantity.value > 20 ? 20 : currentProductQuantity.value;

    CartItem? item = await getByProductId(product.id);
    if (item == null) {
      addItemToCart(product.toCartItem(1));
    } else {
      item = item.copyWith(quantity: currentProductQuantity.value);
      updateCartItem(item);
    }
  }

  increaseQuantityFromCart(CartItem cartItem) async {

    CartItem? item = await getById(cartItem.id);
    if (item == null) return;
    int newQuantity = item.quantity + 1;
    newQuantity = newQuantity > 20 ? 20 : newQuantity;

    item = item.copyWith(quantity: newQuantity);

    updateCartItem(item);
  }

  addOrIncreaseProductCard(Product product) async {
    CartItem? item = await getByProductId(product.id);
    if (item == null) {
      addItemToCart(product.toCartItem(1));
    } else {
      int newQuantity = item.quantity + 1;
      newQuantity = newQuantity > 20 ? 20 : newQuantity;

      item = item.copyWith(quantity: newQuantity);
      updateCartItem(item);
    }
  }

  decreaseQuantity(Product product) async {
    currentProductQuantity.value = currentProductQuantity.value - 1;
    currentProductQuantity.value = currentProductQuantity.value < 0 ? 0 : currentProductQuantity.value;

    if(currentProductQuantity.value == 0){
      deleteCartItemByProductId(product.id);
      return;
    }

    CartItem? item = await getByProductId(product.id);
    if (item == null) {
      return;
    } else {
      item = item.copyWith(quantity: currentProductQuantity.value);
      updateCartItem(item);
    }
  }

  decreaseQuantityFromCart(CartItem cartItem) async {
    CartItem? item = await getById(cartItem.id);
    if (item == null) return;
    int newQuantity = item.quantity - 1;

    if(newQuantity == 0){
      deleteCartItem(item.id!);
      return;
    } else {
      item = item.copyWith(quantity: newQuantity);
      updateCartItem(item);
    }
  }

  getInitialQuantity(int productId) async {
    CartItem? item = await cartDatabase.getByProductId(productId);
    currentProductQuantity.value = item?.quantity ?? 0;
  }
}