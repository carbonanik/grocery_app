import 'dart:math';

import 'package:supercharged/supercharged.dart';

// import 'package:get/get.dart';

Future<void> simulateFetch() async {
  final randMillis = Random().nextInt(1000) + 500;
  await Future.delayed(randMillis.milliseconds);
  final rand = Random().nextInt(10);
  if (rand % 2 == 0) {
    // throw Exception('Failed');
  }
}