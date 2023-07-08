import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../../main.dart';
import '../../../../../model/order_item.dart';
import '../../../../../provider/order/order_hive_provider.dart';

class OrderDetailsPage extends StatelessWidget {
  final int orderId;
  const OrderDetailsPage({
    required this.orderId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Consumer(builder: (context, ref, child) {
        final orderAsyncData = ref.watch(orderByIdProvider(orderId));
        return orderAsyncData.map(
          data: (data) {
            final time = DateTime.parse(data.value.orderDate);
            final DateFormat formatter = DateFormat('d MMM hh:mm a');
            final String formatted = formatter.format(time);
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 300,
                    color: greenColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: _estimatedTime(),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Ordered Items",
                              style: TextStyle(
                                // color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              // "12 Jan 12:35 pm",
                              formatted,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Column(
                              children: List.generate(
                                data.value.orderItems.length,
                                (index) => _item(data.value.orderItems[index]),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 3,
                            color: backgroundColor,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Item Total",
                                      style: TextStyle(
                                        // color: Colors.grey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "${data.value.count}\$",
                                      style: const TextStyle(
                                        // color: Colors.grey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Delivery Fee",
                                      style: TextStyle(
                                        // color: Colors.grey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "100.0\$",
                                      style: TextStyle(
                                        // color: Colors.grey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Divider(
                            thickness: 3,
                            color: backgroundColor,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Paid Via GroWallet",
                                  style: TextStyle(
                                    color: greenColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  "100.0\$",
                                  style: TextStyle(
                                    // color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            );
          },
          error: (error) => const Text("error"),
          loading: (loading) => const Text("Loading"),
        );
      }),
    );
  }

  Container _estimatedTime() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Estimated Delivery in",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "08:30 min",
                      style: TextStyle(
                        // color: Colors.grey[700],
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.person,
                      size: 30,
                    ))
              ],
            ),
            const SizedBox(height: 20),
            const SizedBox(
              height: 6,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  value: 0.7,
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
                  backgroundColor: Color(0xffD6D6D6),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Someone is on the way to deliver your order",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  Column _item(OrderItem orderItem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              orderItem.product.name,
              style: const TextStyle(
                // color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${orderItem.count * orderItem.product.price}\$",
              style: const TextStyle(
                // color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          "${orderItem.count} pcs",
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
