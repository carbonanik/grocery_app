import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../main.dart';
import '../../provider/cart_provider.dart';
import '../../provider/orders_provider.dart';
import '../../util/dimension.dart';
import '../widget/my_app_bar.dart';
import '../widget/payment_method_item.dart';

class PaymentMethod extends ConsumerWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    ref.listen<AsyncValue<void>>(
      processOrderNotifierProvider,
      (_, state) => state.showSnackBarOnError(context),
    );

    final orderState = ref.watch(processOrderNotifierProvider);

    return Scaffold(
      appBar: MyAppBar(title: 'Payment Methods'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: Dimension.height(30)),

            /// pay amount
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.width(30)),
              child: Row(
                children: [
                  Text('Amount to pay',
                      style: TextStyle(
                        fontSize: Dimension.width(16),
                        fontWeight: FontWeight.w600,
                      )),
                  const Spacer(),
                  Consumer(builder: (context, ref, child) {
                    final cartDataModel = ref.watch(cartListProductsProvider);
                    return Text(
                      '\$${cartDataModel.cartPrice()}',
                      style: TextStyle(
                        fontSize: Dimension.width(16),
                        fontWeight: FontWeight.w600,
                        color: greenColor,
                      ),
                    );
                  }),
                ],
              ),
            ),
            SizedBox(height: Dimension.height(20)),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.width(30)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(0, 50),
                  disabledBackgroundColor: Colors.grey,
                  backgroundColor: greenColor,
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
                onPressed: orderState.isData || orderState.isLoading
                    ? null
                    : () {
                        ref
                            .read(processOrderNotifierProvider.notifier)
                            .processOrder(ref);
                      },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.energy_savings_leaf,
                      color: Colors.white,
                    ),
                    SizedBox(width: Dimension.width(20)),
                    Text(
                      orderState.isLoading
                          ? 'Loading...'
                          : orderState.isData
                              ? 'Payment Done'
                              : 'Instant Pay',
                      style: TextStyle(
                        fontSize: Dimension.width(18),
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: Dimension.height(20)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimension.width(30)),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(Dimension.width(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// pay with wallet
                  SizedBox(height: Dimension.height(20)),
                  Text('Or Pay with Wallet',
                      style: TextStyle(
                        fontSize: Dimension.width(16),
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(height: Dimension.height(15)),
                  const PaymentMethodItem(
                    name: 'Paypal',
                    icon: Icons.paypal,
                  ),
                  SizedBox(height: Dimension.height(5)),
                  const PaymentMethodItem(
                    name: 'PayU',
                    icon: Icons.paypal,
                  ),
                  SizedBox(height: Dimension.height(5)),
                  const PaymentMethodItem(
                    name: 'Stripe',
                    icon: Icons.paypal,
                  ),

                  /// pay with card
                  SizedBox(height: Dimension.height(20)),
                  Text('Cards',
                      style: TextStyle(
                        fontSize: Dimension.width(16),
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(height: Dimension.height(15)),
                  const PaymentMethodItem(
                    name: 'Visa',
                    icon: Icons.credit_card,
                  ),

                  /// pay on delivery
                  SizedBox(height: Dimension.height(20)),
                  Text('Pay on Delivery',
                      style: TextStyle(
                        fontSize: Dimension.width(16),
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(height: Dimension.height(15)),
                  const PaymentMethodItem(
                    name: 'Cash on Delivery',
                    icon: Icons.local_atm,
                  ),
                  SizedBox(height: Dimension.height(200)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension AsyncValueUI on AsyncValue {
  // isLoading shorthand (AsyncLoading is a subclass of AsycValue)
  bool get isLoading => this is AsyncLoading;
  bool get isData => this is AsyncData && value != null;

  // show a snackbar on error only
  void showSnackBarOnError(BuildContext context) => whenOrNull(
        error: (error, _) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.toString())),
          );
        },
      );
}
