import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../model/cart_item.dart';
import 'cart_add_remove.dart';

class CartListItem extends StatelessWidget {
  const CartListItem({
    Key? key,
    required this.item,
    required this.onAdd,
    required this.onRemove,
  }) : super(key: key);

  final CartItem item;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Dimension.height(10),
        horizontal: Dimension.width(10),
      ),
      margin: EdgeInsets.only(bottom: Dimension.height(10)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimension.height(10)),
      ),
      child: Row(
        children: [
          Image.network(
            item.image,
            height: Dimension.height(50),
          ),
          SizedBox(
            width: Dimension.width(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: Dimension.width(14)),
              ),
              SizedBox(
                height: Dimension.height(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Dimension.width(100),
                    child: Text(
                      item.weight,
                      style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey, fontSize: Dimension.width(13)),
                    ),
                  ),
                  CartAddRemove(
                    quantity: item.quantity,
                    onAdd: onAdd,
                    onRemove: onRemove,
                  ),
                  SizedBox(
                    width: Dimension.width(90),
                    child: Text(
                      '\$${(item.price * item.quantity).toStringAsFixed(2)}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: Dimension.width(16)),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
