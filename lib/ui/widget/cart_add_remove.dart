import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

class CartAddRemove extends StatelessWidget {
  const CartAddRemove({
    Key? key, required this.quantity, required this.onAdd, required this.onRemove,
  }) : super(key: key);

  final int quantity;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimension.width(5), vertical: Dimension.height(5)),
      decoration: BoxDecoration(color: greenColor, borderRadius: BorderRadius.circular(5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onRemove,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 15,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            quantity.toString(),
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
              onTap: onAdd,
              child: const Icon(Icons.add, color: Colors.white, size: 15),),
        ],
      ),
    );
  }
}
