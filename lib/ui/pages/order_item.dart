import 'package:flutter/material.dart';

import '../../main.dart';
import '../../model/order.dart';
import '../../util/dimension.dart';
import '../widget/my_separetor.dart';

class OrderCard extends StatelessWidget {
  OrderCard({
    Key? key,
    required this.order,
  }) : super(key: key);

  final Order order;
  final height = Dimension.height(150);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Dimension.height(10), left: Dimension.width(20), right: Dimension.width(20)),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height / 2,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimension.width(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: Dimension.width(20), top: Dimension.height(15)),
                      child: Row(
                        children: [
                          Text('Order OD${order.id}',
                              style: TextStyle(
                                fontSize: Dimension.width(18),
                                fontWeight: FontWeight.w500,
                              )),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, color: Colors.black38, size: Dimension.width(20)),
                          SizedBox(width: Dimension.width(10)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: Dimension.width(20), right: Dimension.width(20), top: Dimension.height(10)),
                      child: Text(order.orderDate,
                          style: TextStyle(
                            fontSize: Dimension.width(14),
                            fontWeight: FontWeight.w500,
                            color: Colors.black38,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                  color: Colors.white,
                  child: const MySeparator(
                    color: Colors.black12,
                  )),
              Container(
                height: height / 2 - Dimension.height(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimension.width(10)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: Dimension.width(20)),
                      child: Text('${order.count} Items',
                          style: TextStyle(
                            fontSize: Dimension.width(16),
                            fontWeight: FontWeight.w500,
                          )),
                    ),

                    // Create a green circle
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimension.width(10)),
                      child: Container(
                        height: Dimension.width(8),
                        width: Dimension.width(8),
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(Dimension.width(10)),
                        ),
                      ),
                    ),

                    /// price
                    Text('\$${order.totalPrice}',
                        style: TextStyle(
                          fontSize: Dimension.width(16),
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        )),

                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: Dimension.width(20)),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(Colors.green.shade50),
                          foregroundColor: MaterialStateProperty.all(greenColor),
                        ),
                        onPressed: () {},
                        child: Text(order.orderStatus,
                            style: TextStyle(
                              fontSize: Dimension.width(16),
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: Dimension.width(-10),
            top: height / 2 - 8.8,
            child: Container(
              height: Dimension.width(20),
              width: Dimension.width(20),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(Dimension.width(10)),
              ),
            ),
          ),
          Positioned(
            right: Dimension.width(-10),
            top: height / 2 - 8.8,
            child: Container(
              height: Dimension.width(20),
              width: Dimension.width(20),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(Dimension.width(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
