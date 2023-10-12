import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/api/impl/order_api_impl.dart';
import 'package:instant_grrocery_delivery/data_source/api/mock_impl/order_api_mock_impl.dart';
import 'package:instant_grrocery_delivery/data_source/api/order_api.dart';
import 'package:instant_grrocery_delivery/data_source/api/util/using_api_impl_for.dart';
import 'package:instant_grrocery_delivery/data_source/local/auth_local.dart';
import 'package:instant_grrocery_delivery/model/order/order.dart';
import 'package:instant_grrocery_delivery/model/result_value.dart';
import 'package:instant_grrocery_delivery/provider/api_server_provider.dart';
import 'package:instant_grrocery_delivery/provider/auth/auth_local_provider.dart';
import 'package:instant_grrocery_delivery/provider/cart/cart_provider.dart';
import 'package:instant_grrocery_delivery/provider/order/order_hive_provider.dart';
import 'package:instant_grrocery_delivery/util/extension/async_value.dart';

final orderApiProvider = Provider<OrderApi>((ref) {
  final usingApi = ref.read(apiServerProvider);
  switch (usingApi) {
    case UsingApiImplFor.fastApiServer:
      throw UnimplementedError();
    case UsingApiImplFor.strapiServer:
      return OrderApiImpl();
    case UsingApiImplFor.mockServer:
      return OrderApiMockImpl();
  }
});

class ProcessOrderController extends StateNotifier<ResultValue<Order>> {
  ProcessOrderController(this.ref) : super(const ResultValue.empty());

  final Ref ref;

  Future<void> processOrder() async {
    try {
      state = const ResultValue.loading();
      final authUser = ref.read(getAuthUserProvider);

      if (authUser != null) {
        final order = ref.read(cartProvider).getOrderFromCart();

        final newOrder = await ref.read(orderApiProvider).createOrder(order!, authUser);

        ref.read(ordersListProvider).addOrder(newOrder);
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
}

final processOrderControllerProvider = StateNotifierProvider<ProcessOrderController, ResultValue<Order>>(
  (ref) => ProcessOrderController(ref),
);
