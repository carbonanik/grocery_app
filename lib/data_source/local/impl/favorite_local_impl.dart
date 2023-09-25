import 'package:hive/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';
import 'package:instant_grrocery_delivery/data_source/local/favorite_local.dart';

class FavoriteLocalImpl extends FavoriteLocal {
  @override
  Future<Map<int, bool>> getFavoriteIds() async {
    Box box = await Hive.openBox(HiveBoxName.favoriteBox);
    return box.toMap().map((key, value) => MapEntry(key as int, value as bool));
  }

  @override
  Future<bool> getIsFavorite(int productId) async {
    Box box = await Hive.openBox(HiveBoxName.favoriteBox);
    return box.get(productId);
  }

  @override
  Future<void> setIsFavorite(int productId, bool isFavorite) async {
    Box box = await Hive.openBox(HiveBoxName.favoriteBox);
    return box.put(productId, isFavorite);
  }
}
