import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/core/theme/colors.dart';

import 'package:instant_grrocery_delivery/core/util/dimension.dart';
import 'package:instant_grrocery_delivery/core/widgets/coupon_item.dart';
import 'package:instant_grrocery_delivery/core/widgets/my_app_bar.dart';

class ApplyCouponPage extends StatelessWidget {
  const ApplyCouponPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Apply Coupon';
    return Scaffold(
      appBar: MyAppBar(title: title),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: context.h(30)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.w(30)),
              child: TextField(
                decoration: InputDecoration(
                  suffixText: 'APPLY',
                  suffixStyle: TextStyle(
                    fontSize: context.w(20),
                    fontWeight: FontWeight.w600,
                    color: accentColor,
                  ),
                  hintText: 'Enter Coupon Code',
                  hintStyle: TextStyle(
                    color: Colors.black12,
                    fontSize: context.w(20),
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(context.w(5)),
                    borderSide: const BorderSide(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(context.w(5)),
                    borderSide: const BorderSide(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),
                ),
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
                  SizedBox(height: context.h(20)),
                  Text(
                    'Available Coupons',
                    style: TextStyle(
                      fontSize: context.w(20),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: context.h(20)),
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


