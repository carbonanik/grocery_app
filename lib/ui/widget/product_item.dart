import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../main.dart';
import '../../model/product/product.dart';
import '../../provider/cart/cart_hive_notifier_provider.dart';
import '../../route/route_helper.dart';
import '../../util/dimension.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.product,
    this.onReturn,
  }) : super(key: key);

  final Product product;
  final VoidCallback? onReturn;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(
        RouteHelper.getProductDetail(product.id),
      )?.then((value) => onReturn?.call()),
      child: Container(
        width: Dimension.width(150),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            Dimension.width(13),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Dimension.width(15),
          vertical: Dimension.width(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // ==== product title/name ====
            Text(
              product.name,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: Dimension.width(15),
              ), // height
            ),
            // ==== product image ====
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: Dimension.width(10)),
                child: Image.network(
                  "$baseImageUrl${product.image}",
                  height: Dimension.width(110),
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.image);
                  },
                ),
              ),
            ),
            // const Spacer(),
            // ==== bottom ====
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ==== weight ====
                    Text(
                      product.weight,
                      style: const TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.grey),
                    ),
                    SizedBox(
                      height: Dimension.width(2),
                    ),
                    // ==== price ====
                    Text(
                      "\$${product.price}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimension.width(18),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Consumer(builder: (context, ref, child) {
                  final cartDataModel = ref.read(cartProvider);
                  return Container(
                    height: Dimension.width(40),
                    width: Dimension.width(40),
                    decoration: BoxDecoration(
                      color: accentColor,
                      borderRadius: BorderRadius.circular(Dimension.width(10)),
                    ),
                    child: IconButton(
                      onPressed: () => cartDataModel.itemIncrement(product),
                      icon: Icon(
                        // quantity == 0 ? Icons.add : Icons.remove,
                        Icons.add,
                        color: Colors.white,
                        size: Dimension.width(20),
                      ),
                    ),
                  );
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
