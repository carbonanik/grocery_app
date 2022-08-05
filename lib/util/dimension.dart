import 'package:get/get.dart';

/// width 411
/// height 715
class Dimension {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double height(double value) {
    return screenHeight / (715 / value);
  }

  static double width(double value) {
    return screenWidth / (411 / value);
  }
}
