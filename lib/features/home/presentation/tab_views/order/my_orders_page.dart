import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instant_grrocery_delivery/features/order/presentation/provider/order_hive_provider.dart';
import 'package:instant_grrocery_delivery/core/theme/colors.dart';
import 'package:instant_grrocery_delivery/core/widgets/home_app_bar.dart';
import 'package:instant_grrocery_delivery/core/util/dimension.dart';
import 'order_card.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const HomeAppBar(title: 'My Orders', showSearch: false),
      body: CustomScrollView(
        slivers: [
          Consumer(
            builder: (context, ref, child) {
              final orderDataModel = ref.watch(ordersListProvider);
              final orderList = orderDataModel.orderList.values
                  .toList()
                  .reversed
                  .toList();
              return SliverPadding(
                padding: EdgeInsets.only(
                  left: context.w(20),
                  right: context.w(20),
                  top: context.w(20),
                ),
                sliver: orderList.isEmpty
                    ? SliverFillRemaining(
                        child: Center(
                          child: Text(
                            "No Orders",
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : SliverList.builder(
                        itemCount: orderList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: OrderCard(order: orderList[index]),
                          );
                        },
                      ),
              );
            },
          ),
        ],
      ),
    );
  }
}

