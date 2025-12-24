import 'package:hive_ce/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';
import 'package:instant_grrocery_delivery/data_source/local/orders_local.dart';
import 'package:instant_grrocery_delivery/model/order/order.dart';

class OrderLocalImpl implements OrderLocal {
  @override
  Future<List<Order>> getOrders() async {
    final box = Hive.lazyBox<Order>(HiveBoxName.orderBox);
    final listOfFuture = box.keys.map((e) => box.get(e));
    final orders = await Future.wait(listOfFuture);
    return orders.whereType<Order>().toList();
  }

  @override
  Future<bool> addOrder(Order order) async {
    final box = Hive.lazyBox<Order>(HiveBoxName.orderBox);
    await box.put(order.id, order);
    return true;
  }

  @override
  Future<Order?> getSingleOrder(int orderId) async {
    final box = Hive.lazyBox<Order>(HiveBoxName.orderBox);
    return await box.get(orderId);
  }

  @override
  Future<bool> removeOrder(int orderId) async {
    final box = Hive.lazyBox<Order>(HiveBoxName.orderBox);
    await box.delete(orderId);
    return true;
  }
}
