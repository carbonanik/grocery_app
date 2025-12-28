import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class MyActionButton extends StatelessWidget {
  const MyActionButton({Key? key, required this.count}) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Get.toNamed(RouteHelper.getMyCart());
              context.push('/my-cart');
            },
            backgroundColor: Colors.green,
            child: const Icon(Icons.shopping_cart, color: Colors.white),
          ),
          Positioned(
            right: -4,
            top: -4,
            child: count == 0
                ? Container()
                : Container(
                    padding: const EdgeInsets.all(0),
                    // constraints: const BoxConstraints(minHeight: 32, minWidth: 32),
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 5,
                          color: Colors.black.withAlpha(100),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.redAccent,
                    ),
                    child: Center(
                      child: Text(
                        count.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
