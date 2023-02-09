import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/di/locator.dart';

import '../../util/dimension.dart';
import '../../controller/cart_database_controller.dart';
import '../../main.dart';
import '../widget/my_app_bar.dart';
import '../widget/payment_method_item.dart';

class PaymentMethod extends StatelessWidget {
  PaymentMethod({Key? key}) : super(key: key);

  final CartDatabaseController cartDatabaseController = locator.get();

  @override
  Widget build(BuildContext context) {
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
                  Obx(
                     () {
                      return Text('\$${cartDatabaseController.totalPrice}',
                          style: TextStyle(
                            fontSize: Dimension.width(16),
                            fontWeight: FontWeight.w600,
                            color: greenColor,
                          ));
                    }
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimension.height(20)),

            /// instant payment button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.width(30)),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimension.width(20),
                  vertical: Dimension.height(12),
                ),
                decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: BorderRadius.circular(Dimension.width(6)),
                ),
                child: Row(
                  children: [
                    SizedBox(width: Dimension.width(30)),
                    const Icon(
                      Icons.energy_savings_leaf,
                      color: Colors.white,
                    ),
                    SizedBox(width: Dimension.width(30)),
                    Text(
                      'Instant Pay with GroWallet',
                      style: TextStyle(
                        fontSize: Dimension.width(16),
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
