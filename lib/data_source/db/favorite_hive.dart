import 'package:hive/hive.dart';

Future<dynamic> getFavoriteIdsHive() async {
  Box box1 = await Hive.openBox('favorite_item');
  return box1.toMap();
}

Future<bool> getIsFavoriteHive(productId) async {
  Box box1 = await Hive.openBox('favorite_item');
  return box1.get(productId);
}

Future<void> setIsFavoriteHive(productId, isFavorite) async {
  Box box1 = await Hive.openBox('favorite_item');
  return box1.put(productId, isFavorite);
}
