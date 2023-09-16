import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/impl/order_api_impl.dart';
import 'package:instant_grrocery_delivery/data_source/local/auth_hive.dart';
import 'package:instant_grrocery_delivery/model/order.dart';
import 'package:instant_grrocery_delivery/provider/cart/cart_hive_notifier_provider.dart';
import 'package:instant_grrocery_delivery/provider/order/order_hive_provider.dart';
import 'package:instant_grrocery_delivery/util/extension/async_value.dart';

final orderApiProvider = Provider((ref) => OrderApiImpl());

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
