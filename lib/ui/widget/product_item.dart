import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../main.dart';
import '../../model/product/product.dart';
import '../../provider/cart/cart_provider.dart';
import '../../route/route_helper.dart';

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
        width: context.w(150),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            context.w(13),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: context.w(15),
          vertical: context.w(15),
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
                fontSize: context.w(15),
              ), // height
            ),
            // ==== product image ====
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: context.w(10)),
                  child: Image.network(
                    "$baseImageUrl${product.image}",
                    height: context.w(110),
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.image);
                    },
                  ),
                ),
              ),
            ),
            // ==== bottom ====
            buildBottomRow(context),
          ],
        ),
      ),
    );
  }

  Widget buildBottomRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // todo fix this cost 31 ms
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ==== weight ====
            Text(
              product.weight,
              style: const TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
            ),
            SizedBox(
              height: context.w(2),
            ),
            // ==== price ====
            Text(
              "\$${product.price}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            )
          ],
        ),
        // const Spacer(),                 // todo fix or this also cost 31 ms
        Consumer(builder: (context, ref, child) {
          // final cartDataModel = ref.read(cartProvider);
          return Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: accentColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () async => await ref.read(cartProvider).itemIncrement(product),
              icon: const Icon(
                // quantity == 0 ? Icons.add : Icons.remove,
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
          );
        }),
      ],
    );
  }
}
