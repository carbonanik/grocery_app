import 'package:hive/hive.dart';
import 'constant/constant.dart';

abstract class FavoriteLocal {
  Future<Map<int, bool>> getFavoriteIds();

  Future<bool> getIsFavorite(int productId);

  Future<void> setIsFavorite(int productId, bool isFavorite);
}
