import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/features/order/data/model/order.dart';
import 'package:instant_grrocery_delivery/core/result_value.dart';
import 'package:instant_grrocery_delivery/core/theme/colors.dart';
import 'package:instant_grrocery_delivery/core/widgets/buttons/action_button.dart';
import 'package:instant_grrocery_delivery/core/widgets/login_to_access.dart';
import 'package:instant_grrocery_delivery/features/cart/presentation/provider/cart_provider.dart';
import 'package:instant_grrocery_delivery/features/order/presentation/provider/process_order_provider.dart';
import 'package:instant_grrocery_delivery/core/util/dimension.dart';
import 'package:instant_grrocery_delivery/core/widgets/my_app_bar.dart';
import 'package:instant_grrocery_delivery/core/widgets/payment_method_item.dart';

class PaymentMethodPage extends ConsumerWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    ref.listen<ResultValue<Order>>(
      processOrderControllerProvider,
      (_, state) => state.showSnackBarOnError(context),
    );

    final orderState = ref.watch(processOrderControllerProvider);
    final cartLength = ref.watch(cartProvider).cartList.length;

    return Scaffold(
      appBar: const MyAppBar(title: 'Payment Methods'),
      body: LoginToAccess(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: context.h(30)),

              /// pay amount
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.w(30)),
                child: Row(
                  children: [
                    Text(
                      'Amount to pay',
                      style: TextStyle(
                        fontSize: context.w(16),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Consumer(
                      builder: (context, ref, child) {
                        final cartDataModel = ref.watch(cartProvider);
                        return Text(
                          '\$${cartDataModel.cartPrice()}',
                          style: TextStyle(
                            fontSize: context.w(16),
                            fontWeight: FontWeight.w600,
                            color: accentColor,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: context.h(20)),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.w(30)),
                child: ActionButton(
                  enabled: cartLength != 0 && orderState.isEmpty,
                  text: orderState.isLoading
                      ? 'Loading...'
                      : orderState.isData
                      ? 'Payment Done'
                      : 'Instant Pay',
                  onTap: () {
                    ref
                        .read(processOrderControllerProvider.notifier)
                        .processOrder();
                  },
                  icon: Icons.energy_savings_leaf,
                ),
              ),

              SizedBox(height: context.h(20)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: context.w(30)),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(context.w(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// pay with wallet
                    SizedBox(height: context.h(20)),
                    Text(
                      'Or Pay with',
                      style: TextStyle(
                        fontSize: context.w(16),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: context.h(15)),
                    const PaymentMethodItem(name: 'Paypal', icon: Icons.paypal),
                    SizedBox(height: context.h(5)),
                    const PaymentMethodItem(
                      name: 'Stripe',
                      icon: Icons.double_arrow,
                    ),

                    /// pay with card
                    SizedBox(height: context.h(20)),
                    Text(
                      'Cards',
                      style: TextStyle(
                        fontSize: context.w(16),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: context.h(15)),
                    const PaymentMethodItem(
                      name: 'Visa',
                      icon: Icons.credit_card,
                    ),

                    /// pay on delivery
                    SizedBox(height: context.h(20)),
                    Text(
                      'Cash',
                      style: TextStyle(
                        fontSize: context.w(16),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: context.h(15)),
                    const PaymentMethodItem(
                      name: 'Cash on Delivery',
                      icon: Icons.local_atm,
                    ),
                    SizedBox(height: context.h(200)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

