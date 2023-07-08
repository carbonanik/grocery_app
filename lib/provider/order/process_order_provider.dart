import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/hive/auth_hive.dart';

import '../../data_source/api/order_api.dart';
import '../../model/order.dart';
import '../../util/extension/async_value.dart';
import '../auth/auth_hive_provider.dart';
import '../cart/cart_hive_notifier_provider.dart';
import 'order_hive_provider.dart';

final orderApiProvider = Provider((ref) => OrderApi());

class ProcessOrderController extends StateNotifier<AsyncValue<Order?>> {
  ProcessOrderController(this.ref) : super(AsyncValueExt.initial());

  final Ref ref;

  Future<void> processOrder() async {
    state = const AsyncValue.loading();

    try {
      final authUser = await getAuthUserHive();
      // final authUser = ref.read(getAuthUserProvider).requireValue;
      //
      if ( authUser != null ) {
        final order = ref.read(cartProvider).getOrderFromCart();
        order.orderItems;
        final createOrderJson = {"data": order.toJson()};
        final newOrder =
        await ref.read(orderApiProvider).createOrder(createOrderJson, authUser);

        ref.read(ordersProvider).addOrder(newOrder);
        ref.read(cartProvider).clearCart();
        state = await AsyncValue.guard(() async => newOrder);
      //
      } else {
        Exception('User not logged in');
      }


    } on Exception catch (e, s) {
      state = AsyncValue.error(e, s);

    }
  }
}

final processOrderControllerProvider =
    StateNotifierProvider<ProcessOrderController, AsyncValue<Order?>>(
  (ref) => ProcessOrderController(ref),
);
