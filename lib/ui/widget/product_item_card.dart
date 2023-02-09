import 'package:flutter/material.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/model/product.dart';
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
      width: Dimension.width(170),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(Dimension.height(13))),
      margin: EdgeInsets.only(left: Dimension.width(20)),
      padding: EdgeInsets.symmetric(horizontal: Dimension.width(15), vertical: Dimension.height(15)),
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
              height: Dimension.height(110),
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
                decoration: BoxDecoration(color: greenColor, borderRadius: BorderRadius.circular(10)),
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
