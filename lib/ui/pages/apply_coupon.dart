import 'package:flutter/material.dart';

import '../../main.dart';
import '../../util/dimension.dart';
import '../widget/coupon_item.dart';
import '../widget/my_app_bar.dart';


class ApplyCoupon extends StatelessWidget {
  const ApplyCoupon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Apply Coupon';
    return Scaffold(
      appBar: MyAppBar(title: title),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: Dimension.height(30)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.width(30)),
              child: TextField(
                decoration: InputDecoration(
                  suffixText: 'APPLY',
                  suffixStyle: TextStyle(
                    fontSize: Dimension.width(20),
                    fontWeight: FontWeight.w600,
                    color: greenColor,
                  ),
                  hintText: 'Enter Coupon Code',
                  hintStyle: TextStyle(
                    color: Colors.black12,
                    fontSize: Dimension.width(20),
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.width(5)),
                    borderSide: const BorderSide(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimension.width(5)),
                    borderSide: const BorderSide(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),
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
                  SizedBox(height: Dimension.height(20)),
                  Text('Available Coupons',
                      style: TextStyle(
                        fontSize: Dimension.width(20),
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(height: Dimension.height(20)),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return CouponItem();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
