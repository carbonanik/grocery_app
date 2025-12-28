import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:instant_grrocery_delivery/features/order/data/source/order_api_impl.dart';
import 'package:instant_grrocery_delivery/features/order/data/source/order_api.dart';
import 'package:instant_grrocery_delivery/features/order/data/model/order.dart';
import 'package:instant_grrocery_delivery/core/result_value.dart';
import 'package:instant_grrocery_delivery/features/auth/presentation/provider/auth_local_provider.dart';
import 'package:instant_grrocery_delivery/features/cart/presentation/provider/cart_provider.dart';
import 'package:instant_grrocery_delivery/features/order/presentation/provider/order_hive_provider.dart';

final orderApiProvider = Provider<OrderApi>((ref) {
  return OrderApiImpl();
});

class ProcessOrderController extends StateNotifier<ResultValue<Order>> {
  ProcessOrderController(this.ref) : super(const ResultValue.empty());

  final Ref ref;

  Future<void> processOrder() async {
    try {
      state = const ResultValue.loading();
      final authUser = await ref.read(getAuthUserProvider.future);

      if (authUser != null) {
        final order = ref.read(cartProvider).getOrderFromCart();
        final newOrder =
            await ref.read(orderApiProvider).createOrder(order!, authUser);

        await ref.read(ordersListProvider).addOrder(newOrder);
        await ref.read(cartProvider).clearCart();

        state = ResultValue.data(newOrder);
        //
      } else {
        Exception('User not logged in');
      }
    } on Exception catch (e) {
      state = ResultValue.error(e);
    }
  }

  void clear() {
    state = const ResultValue.empty();
  }
}

final processOrderControllerProvider =
    StateNotifierProvider<ProcessOrderController, ResultValue<Order>>(
  (ref) => ProcessOrderController(ref),
);

