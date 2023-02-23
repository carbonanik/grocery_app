import 'package:shared_preferences/shared_preferences.dart';

const String FAVORITE_KEY = "favorite";

class FavoritePreference {
  final SharedPreferences sharedPreferences;

  FavoritePreference({required this.sharedPreferences});

  void addToFavorite(int item) {
    List<String> favorites = [];
    if (sharedPreferences.containsKey(FAVORITE_KEY)) {
      favorites = sharedPreferences.getStringList(FAVORITE_KEY)!;
    }
    favorites.add(item.toString());
    sharedPreferences.setStringList(FAVORITE_KEY, favorites);
  }

  void removeFromFavorite(int item) {
    List<String> favorites = [];
    if (sharedPreferences.containsKey(FAVORITE_KEY)) {
      favorites = sharedPreferences.getStringList(FAVORITE_KEY)!;
    }
    favorites.remove(item.toString());
    sharedPreferences.setStringList(FAVORITE_KEY, favorites);
  }

  void toggleFavorite(int item) {
    if (isFavorite(item)) {
      removeFromFavorite(item);
    } else {
      addToFavorite(item);
    }
  }

  List<int> getFavoriteList() {
    List<String> favorites = [];
    if (sharedPreferences.containsKey(FAVORITE_KEY)) {
      favorites = sharedPreferences.getStringList(FAVORITE_KEY)!;
    }
    return favorites.map((e) => int.parse(e)).toList();
  }

  bool isFavorite(int item) {
    List<String> favorites = [];
    if (sharedPreferences.containsKey(FAVORITE_KEY)) {
      favorites = sharedPreferences.getStringList(FAVORITE_KEY)!;
    }
    return favorites.contains(item.toString());
  }
}
