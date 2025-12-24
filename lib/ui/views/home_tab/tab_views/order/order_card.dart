import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/model/order/order.dart';

import 'package:instant_grrocery_delivery/util/dimension.dart';
import 'package:instant_grrocery_delivery/ui/widget/my_separetor.dart';

class OrderCard extends StatelessWidget {
  OrderCard({Key? key, required this.order}) : super(key: key);

  final Order order;

  @override
  Widget build(BuildContext context) {
    final height = context.h(150);
    return GestureDetector(
      onTap: () {
        // Get.toNamed(RouteHelper.getOrderDetail(order.id.toString()));
        context.push('/order-details/${order.id}');
      },
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height / 2,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(context.w(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: context.w(20),
                        top: context.h(15),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Order OD${order.id}',
                            style: TextStyle(
                              fontSize: context.w(18),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black38,
                            size: context.w(20),
                          ),
                          SizedBox(width: context.w(10)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: context.w(20),
                        right: context.w(20),
                        top: context.h(10),
                      ),
                      child: Text(
                        order.orderDate,
                        style: TextStyle(
                          fontSize: context.w(14),
                          fontWeight: FontWeight.w500,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: const MySeparator(color: Colors.black12),
              ),
              Container(
                height: height / 2 - context.h(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(context.w(10)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: context.w(20)),
                      child: Text(
                        '${order.count} Items',
                        style: TextStyle(
                          fontSize: context.w(16),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    // Create a green circle
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: context.w(10)),
                      child: Container(
                        height: context.w(8),
                        width: context.w(8),
                        decoration: BoxDecoration(
                          color: accentColor,
                          borderRadius: BorderRadius.circular(context.w(10)),
                        ),
                      ),
                    ),

                    /// price
                    Text(
                      '\$${order.totalPrice}',
                      style: TextStyle(
                        fontSize: context.w(16),
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),

                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: context.w(20)),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(
                            Colors.green.shade50,
                          ),
                          foregroundColor: MaterialStateProperty.all(
                            accentColor,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          order.orderStatus,
                          style: TextStyle(
                            fontSize: context.w(16),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: context.w(-10),
            top: height / 2 - 8.8,
            child: Container(
              height: context.w(20),
              width: context.w(20),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(context.w(10)),
              ),
            ),
          ),
          Positioned(
            right: context.w(-10),
            top: height / 2 - 8.8,
            child: Container(
              height: context.w(20),
              width: context.w(20),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(context.w(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
