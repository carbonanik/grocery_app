import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/provider/order/order_hive_provider.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';
import 'order_card.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                children: [
                  Text(
                    'My Orders',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // const Spacer(),
                  // Container(
                  //   padding: const EdgeInsets.all(10),
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(50),
                  //   ),
                  //   child: const Icon(Icons.search),
                  // )
                ],
              ),
            ),
          ),
          Consumer(builder: (context, ref, child) {
            final orderDataModel = ref.watch(ordersListProvider);
            final orderList =
                orderDataModel.orderList.values.toList().reversed.toList();
            return SliverPadding(
              padding: EdgeInsets.only(
                left: Dimension.width(20),
                right: Dimension.width(20),
                top: Dimension.width(20),
              ),
              sliver: SliverList.builder(
                itemCount: orderList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: OrderCard(
                      order: orderList[index],
                    ),
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