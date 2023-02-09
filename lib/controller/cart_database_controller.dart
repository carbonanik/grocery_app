import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/repo/cart_item_repo.dart';
import 'package:instant_grrocery_delivery/model/product.dart';

import '../model/cart_item.dart';

class CartDatabaseController extends GetxController {
  final CartItemRepo cartItemRepo;

  CartDatabaseController({required this.cartItemRepo});

  final cartList = <CartItem>[].obs;
  final currentProductQuantity = 0.obs;
  final totalPrice = 0.0.obs;
  final totalQuantity = 0.obs;


  void addItemToCart(CartItem item) async {
    await cartItemRepo.insert(item);
    getCartList();
  }

  void calculateTotalPrice() {
    totalPrice.value = cartList.fold(0.0, (acc, item) => acc + item.price * item.quantity);
  }

  void calculateTotalQuantity() {
    totalQuantity.value = cartList.fold(0, (acc, item) => acc + item.quantity);
  }

  Future<CartItem?> getById(int? id) async {
    return await cartItemRepo.getById(id);
  }

  Future<CartItem?> getByProductId(int productId) async {
    return await cartItemRepo.getByProductId(productId);
  }

  getCartList() async {
    cartItemRepo.getAll().then((value) {
      cartList.value = value;
      calculateTotalPrice();
      calculateTotalQuantity();
    });
  }

  updateCartItem(CartItem item) async {
    await cartItemRepo.update(item);
    getCartList();
  }

  deleteCartItem(int itemId) async {
    await cartItemRepo.delete(itemId);
    getCartList();
  }

  deleteCartItemByProductId(int productId) async {
    await cartItemRepo.deleteByProductId(productId);
    getCartList();
  }

  deleteAllCartItems() async {
    await cartItemRepo.deleteAll();
    getCartList();
  }

  increaseQuantity(Product product, int cartId) async {
    currentProductQuantity.value = currentProductQuantity.value + 1;
    currentProductQuantity.value = currentProductQuantity.value > 20 ? 20 : currentProductQuantity.value;

    CartItem? item = await getByProductId(product.id);
    if (item == null) {
      addItemToCart(product.toCartItem(1, cartId));
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

  addOrIncreaseProductCard(Product product, int cartId) async {
    CartItem? item = await getByProductId(product.id);
    if (item == null) {
      addItemToCart(product.toCartItem(1, cartId));
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
    CartItem? item = await cartItemRepo.getByProductId(productId);
    currentProductQuantity.value = item?.quantity ?? 0;
  }
}