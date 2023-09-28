import 'dart:math';

import 'package:get/get.dart';

Future<void> simulateFetch() async {
  final randmili = Random().nextInt(1000) + 500;
  await Future.delayed(randmili.milliseconds);
  final rand = Random().nextInt(10);
  if (rand % 2 == 0) {
    // throw Exception('Failed to fetch categories');
  }
}