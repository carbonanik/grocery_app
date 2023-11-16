import 'package:hive/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';
import 'package:instant_grrocery_delivery/data_source/local/favorite_local.dart';

class FavoriteLocalImpl extends FavoriteLocal {
  @override
  Future<Map<int, bool>> getFavoriteIds() async {
    final box = Hive.lazyBox<bool>(HiveBoxName.favoriteBox);
    return {for (var productId in box.keys) productId: await box.get(productId) ?? false};
    // toMap().map((key, value) => MapEntry(key as int, value))
  }

  @override
  Future<bool> getIsFavorite(int productId) async {
    final box = Hive.lazyBox<bool>(HiveBoxName.favoriteBox);
    return await box.get(productId) ?? false;
  }

  @override
  Future<void> setIsFavorite(int productId, bool isFavorite) async {
    final box = Hive.lazyBox<bool>(HiveBoxName.favoriteBox);
    await box.put(productId, isFavorite);
  }
}
