import 'package:hive/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/boarding_local.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';

class BoardingLocalImpl extends BoardingLocal {
  final boarding = "boarding";

  @override
  bool isPreviouslyBoarded() {
    final box = Hive.box<bool>(HiveBoxName.boardingBox);
    return box.get(boarding) ?? false;
  }

  @override
  bool doneBoarding() {
    final box = Hive.box<bool>(HiveBoxName.boardingBox);
    box.put(boarding, true);
    return true;
  }
}
