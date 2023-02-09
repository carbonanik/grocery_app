import 'package:flutter/cupertino.dart';
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
        horizontal: Dimension.width(20),
        vertical: Dimension.height(15),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimension.width(6)),
      ),
      child: Row(
        children: [
          SizedBox(width: Dimension.width(10)),
          Icon(
            icon,
            color: Colors.grey,
          ),
          SizedBox(width: Dimension.width(20)),
          Text(
            name,
            style: TextStyle(
              fontSize: Dimension.width(16),
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
