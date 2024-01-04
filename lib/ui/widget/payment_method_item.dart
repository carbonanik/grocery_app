import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    Key? key, required this.name, required this.icon,
  }) : super(key: key);

  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.w(20),
        vertical: context.h(15),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(context.w(6)),
      ),
      child: Row(
        children: [
          SizedBox(width: context.w(10)),
          Icon(
            icon,
            color: Colors.grey,
          ),
          SizedBox(width: context.w(20)),
          Text(
            name,
            style: TextStyle(
              fontSize: context.w(16),
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
