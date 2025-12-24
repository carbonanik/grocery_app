import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/model/category/category.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({Key? key, required this.category, required this.index})
    : super(key: key);

  final Category category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.toNamed(
        //   RouteHelper.getCategoryTab(selectedCategoryId: category.id),
        // );
        context.push('/category-tab/${category.id}');
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
              padding: EdgeInsets.all(context.w(4)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(context.h(5)),
                child: Image.network(
                  '$baseImageUrl${category.image}',
                  fit: BoxFit.cover,
                  height: context.w(50),
                  width: context.w(50),
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.image);
                  },
                ),
              ),
            ),
            SizedBox(width: context.w(5)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  category.name.split(' ').first,
                  style: TextStyle(
                    fontWeight: index.isOdd ? FontWeight.w800 : FontWeight.w400,
                    fontSize: index.isOdd ? 13 : 14,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  category.name.split(' ').last,
                  style: TextStyle(
                    fontWeight: index.isEven
                        ? FontWeight.w800
                        : FontWeight.w400,
                    fontSize: index.isEven ? 13 : 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
