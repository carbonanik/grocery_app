import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';
import 'package:instant_grrocery_delivery/ui/theme/colors.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

class ProductItemCard extends StatelessWidget {
  const ProductItemCard({
    Key? key,
    required this.simPro,
  }) : super(key: key);

  final Product simPro;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.w(170),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(context.h(13))),
      margin: EdgeInsets.only(left: context.w(20)),
      padding: EdgeInsets.symmetric(horizontal: context.w(15), vertical: context.h(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product name
          Text(
            simPro.name,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
          // product image
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Image.asset(
              simPro.image,
              height: context.h(110),
            ),
          )),
          // row under product image
          Row(
            children: [
              // price and weight
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    simPro.weight,
                    style: const TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 2,
                  ),

                  /// price
                  Text(
                    "\$${simPro.price}",
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
              const Spacer(),

              /// item add button
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(color: accentColor, borderRadius: BorderRadius.circular(10)),
                child: const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
