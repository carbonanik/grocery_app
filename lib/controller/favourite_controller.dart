import 'package:get/get.dart';

import '../data_source/pref/pref_favourite.dart';

class FavoriteController extends GetxController {
  static const String FAVORITE_KEY = "favorite";

  final FavoritePreference favoritePreference;

  FavoriteController({required this.favoritePreference});

  final isFavorite = false.obs;

  void addToFavorite(int item) {
    favoritePreference.addToFavorite(item);
  }

  void removeFromFavorite(int item) {
    favoritePreference.removeFromFavorite(item);
  }

  void toggleFavorite(int item) {
    favoritePreference.toggleFavorite(item);
    getIsFavorite(item);
  }

  List<int> getFavoriteList() {
    return favoritePreference.getFavoriteList();
  }

  void getIsFavorite(int item) {
    isFavorite.value = favoritePreference.isFavorite(item);
  }
}
