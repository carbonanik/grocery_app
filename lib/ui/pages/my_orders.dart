import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/provider/orders_provider.dart';
import 'package:instant_grrocery_delivery/ui/pages/order_item.dart';

import '../../main.dart';
import '../widget/my_app_bar.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MyAppBar(
        title: 'My Orders',
      ),
      body: Column(
        children: [
          Consumer(builder: (context, ref, child) {
            final orderDataModel = ref.watch(ordersProvider);
            final orderList = orderDataModel.orderList.values.toList();
            return Expanded(
              child: ListView.builder(
                itemCount: orderList.length,
                itemBuilder: (context, index) {
                  return OrderCard(
                    order: orderList[index],
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
