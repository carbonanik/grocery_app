import 'package:hive/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';
import 'package:instant_grrocery_delivery/data_source/local/favorite_local.dart';

class FavoriteLocalImpl extends FavoriteLocal {
  @override
  Map<int, bool> getFavoriteIds() {
    final box = Hive.box<bool>(HiveBoxName.favoriteBox);
    return box.toMap().map((key, value) => MapEntry(key as int, value));
  }

  @override
  bool getIsFavorite(int productId) {
    final box = Hive.box<bool>(HiveBoxName.favoriteBox);
    return box.get(productId) ?? false;
  }

  @override
  void setIsFavorite(int productId, bool isFavorite) {
    final box = Hive.box<bool>(HiveBoxName.favoriteBox);
    box.put(productId, isFavorite);
  }
}
