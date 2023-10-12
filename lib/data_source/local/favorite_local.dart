import 'package:hive/hive.dart';
import 'constant/constant.dart';

abstract class FavoriteLocal {
  Map<int, bool> getFavoriteIds();

  bool getIsFavorite(int productId);

  void setIsFavorite(int productId, bool isFavorite);
}
