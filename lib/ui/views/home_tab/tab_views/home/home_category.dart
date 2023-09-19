import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/model/category/category.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../../../../route/route_helper.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({
    Key? key,
    required this.category,
    required this.index,
  }) : super(key: key);

  final Category category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          RouteHelper.getCategoryTab(selectedCategoryId: category.id),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 2, right: 10, top: 3, bottom: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(Dimension.width(4)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Dimension.height(5)),
                child: Image.network(
                  '$baseImageUrl${category.image}',
                  fit: BoxFit.cover,
                  height: Dimension.width(50),
                  width: Dimension.width(50),
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.image);
                  },
                ),
              ),
            ),
            SizedBox(
              width: Dimension.width(5),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  category.name.split(' ').first,
                  style: TextStyle(
                      fontWeight:
                          index.isOdd ? FontWeight.w800 : FontWeight.w400,
                      fontSize: index.isOdd ? 13 : 14),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  category.name.split(' ').last,
                  style: TextStyle(
                      fontWeight:
                          index.isEven ? FontWeight.w800 : FontWeight.w400,
                      fontSize: index.isEven ? 13 : 14),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
