import 'package:hive_ce/hive.dart';
import 'package:instant_grrocery_delivery/features/onboarding/data/source/boarding_local.dart';
import 'package:instant_grrocery_delivery/core/api/local_constants.dart';

class BoardingLocalImpl extends BoardingLocal {
  final boarding = "boarding";

  @override
  Future<bool> isPreviouslyBoarded() async {
    final box = Hive.lazyBox<bool>(HiveBoxName.boardingBox);
    return await box.get(boarding) ?? false;
  }

  @override
  Future<bool> doneBoarding() async {
    final box = Hive.lazyBox<bool>(HiveBoxName.boardingBox);
    await box.put(boarding, true);
    return true;
  }
}

