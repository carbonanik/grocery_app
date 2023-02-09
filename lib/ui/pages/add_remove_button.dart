import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

class AddRemoveButton extends StatelessWidget {
  const AddRemoveButton({
    Key? key,
    required this.quantity,
    required this.onAdd,
    required this.onRemove,
  }) : super(key: key);

  final int quantity;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimension.width(15), vertical: Dimension.height(10)),
      decoration: BoxDecoration(color: greenColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onRemove,
            child: Icon(
              Icons.remove,
              color: Colors.white,
              size: 20,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '$quantity',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: onAdd,
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
