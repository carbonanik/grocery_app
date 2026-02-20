import 'package:flutter/material.dart';

/// width 411
/// height 715
// class Dimension {
  // static double screenHeight = Get.context!.height;
  // static double screenWidth = Get.context!.width;

  // static double height(double value) {
  //   return screenHeight / (715 / value);
  // }
  //
  // static double width(double value) {
  //   return screenWidth / (411 / value);
  // }
// }

extension DimensionExtension on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;

  double h(double value) {
    return screenHeight / (715 / value);
  }

  double w(double value) {
    return screenWidth / (411 / value);
  }


}
