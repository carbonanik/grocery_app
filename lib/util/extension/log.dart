import 'package:flutter/foundation.dart';

extension L on Object? {
  void log() {
    if (kDebugMode) {
      print("===================================");
      print(this);
    }
  }
}