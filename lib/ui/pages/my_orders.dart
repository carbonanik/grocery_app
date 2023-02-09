import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:instant_grrocery_delivery/model/order.dart';
import 'package:instant_grrocery_delivery/ui/pages/order_item.dart';

import '../../core/queries.dart';
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
          Query(
            options: QueryOptions(
              document: gql(Queries.getOrderByUserId(1)), // this is the query string you just created
              fetchPolicy: FetchPolicy.cacheAndNetwork,
              // pollInterval: const Duration(seconds: 10),
            ),
            builder: (QueryResult result, {VoidCallback? refetch, FetchMore? fetchMore}){

              if (result.hasException) {
                return Text(result.exception.toString());
              }

              if (result.isLoading) {
                return const Text('Loading');
              }

              List? orderJson = result.data?['order'];

              if (orderJson == null || orderJson.isEmpty) {
                return const Text('No repositories');
              }

              List<Order> orderList = orderJson.map((e) => Order.fromJson(e)).toList();

              return Expanded(
                child: ListView.builder(
                  itemCount: orderList.length,
                  itemBuilder: (context, index) {
                    return OrderCard(order: orderList[index],);
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
