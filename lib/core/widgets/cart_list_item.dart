import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/features/cart/data/model/cart_item/cart_item.dart';
import 'package:instant_grrocery_delivery/core/theme/colors.dart';
import 'package:instant_grrocery_delivery/core/util/dimension.dart';

import 'buttons/cart_add_remove.dart';

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
        vertical: context.h(10),
        horizontal: context.w(10),
      ),
      // margin: EdgeInsets.only(bottom: context.h(10)),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(context.h(10)),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              // Get.toNamed(RouteHelper.getProductDetail(item.product.id));
              context.push('/product-detail/${item.product.id}');
            },
            child: Image.network(
              baseImageUrl + item.product.image,
              height: context.h(50),
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.image);
              },
            ),
          ),
          SizedBox(width: context.w(20)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.product.name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: context.w(14),
                ),
              ),
              SizedBox(height: context.h(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: context.w(100),
                    child: Text(
                      item.product.weight,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: context.w(13),
                      ),
                    ),
                  ),
                  CartAddRemove(
                    quantity: item.count,
                    onAdd: onAdd,
                    onRemove: onRemove,
                  ),
                  SizedBox(
                    width: context.w(90),
                    child: Text(
                      '\$${(item.product.price * item.count).toStringAsFixed((item.product.price * item.count) % 1 == 0 ? 0 : 2)}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: context.w(16),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

