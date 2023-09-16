import 'package:hive/hive.dart';
import 'constant/constant.dart';

Future<dynamic> getFavoriteIdsHive() async {
  Box box = await Hive.openBox(HiveBoxName.favoriteBox);
  return box.toMap();
}

Future<bool> getIsFavoriteHive(productId) async {
  Box box = await Hive.openBox(HiveBoxName.favoriteBox);
  return box.get(productId);
}

Future<void> setIsFavoriteHive(productId, isFavorite) async {
  Box box = await Hive.openBox(HiveBoxName.favoriteBox);
  return box.put(productId, isFavorite);
}
