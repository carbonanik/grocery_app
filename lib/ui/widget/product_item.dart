import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../main.dart';
import '../../model/product.dart';
import '../../provider/cart_provider.dart';
import '../../route/route_helper.dart';
import '../../util/dimension.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.product,
    // required this.cartDatabaseController,
    this.heroPrefix = 0,
    this.onReturn,
  }) : super(key: key);

  final Product product;

  // final CartDatabaseController cartDatabaseController;
  final int heroPrefix;
  final VoidCallback? onReturn;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Get.toNamed(RouteHelper.getProductDetail(product.id, heroPrefix))
              ?.then((value) => onReturn?.call()),
      child: Container(
        width: Dimension.width(150),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dimension.width(13))),
        padding: EdgeInsets.symmetric(
            horizontal: Dimension.width(15), vertical: Dimension.width(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // product title/name
            Text(
              product.name,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: Dimension.width(15)), // height
            ),
            //product image
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: Dimension.width(5)),
                child: Hero(
                  tag: '${heroPrefix}product_image${product.id}',
                  child: Image.network(
                    "$baseImageUrl${product.image}",
                    height: Dimension.width(110),
                    errorBuilder: (context, error, stackTrace) {
                      print(error);
                      return Icon(Icons.image);
                    },
                  ),
                ),
              ),
            ),

            // bottom
            Row(
              children: [
                //
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.weight,
                      style: const TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.grey),
                    ),
                    SizedBox(
                      height: Dimension.width(2),
                    ),
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
                  final cartDataModel = ref.read(cartListProductsProvider);
                  return Hero(
                    tag: '${heroPrefix}add_to_cart${product.id}',
                    child: Material(
                      type: MaterialType.transparency,
                      child: Container(
                        height: Dimension.width(40),
                        width: Dimension.width(40),
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius:
                              BorderRadius.circular(Dimension.width(10)),
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
                      ),
                    ),
                  );
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Container(
//       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(13)),
//       padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             product.name,
//             style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
//           ),
//           Center(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 7.0),
//                 child: Image.asset(
//                   product.image,
//                   height: 130,
//                 ),
//               )),
//           Row(
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     product.weight,
//                     style: const TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
//                   ),
//                   const SizedBox(
//                     height: 2,
//                   ),
//                   Text(
//                     "\$${product.price}",
//                     style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                   )
//                 ],
//               ),
//               const Spacer(),
//               Container(
//                   height: 40,
//                   width: 40,
//                   decoration: BoxDecoration(
//                       color: Colors.lightGreen,
//                       borderRadius: BorderRadius.circular(10)
//                   ),
//                   child: const IconButton(onPressed: null, icon: Icon(Icons.add, color: Colors.white,)))
//             ],
//           )
//         ],
//       ),
//     );
