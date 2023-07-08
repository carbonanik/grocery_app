import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';

class MyActionButton extends StatelessWidget {
  const MyActionButton({
    Key? key, required this.count,
  }) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Stack(
        children: [
          FloatingActionButton(
            onPressed: () {
              Get.toNamed(RouteHelper.getMyCart());
            },
            backgroundColor: Colors.green,
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
          count == 0 ? Container(): Container(
            padding: const EdgeInsets.all(8),
            constraints: const BoxConstraints(minHeight: 32, minWidth: 32),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(spreadRadius: 1, blurRadius: 5, color: Colors.black.withAlpha(50))],
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                count.toString(),
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
