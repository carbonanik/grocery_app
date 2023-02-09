import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../model/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(RouteHelper.getCategoryTab());
        print('category tab');
      },
      child: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(Dimension.width(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Dimension.width(8)),
                child: Image.network(
                  basePhotoUrl + category.image,
                  fit: BoxFit.cover,
                  height: Dimension.width(40),
                  width: Dimension.width(40),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              category.name,
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
