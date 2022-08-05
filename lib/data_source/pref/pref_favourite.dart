import 'package:shared_preferences/shared_preferences.dart';

const String FAVOURITE_KEY = "favourite";

class FavouritePreference {
  final SharedPreferences sharedPreferences;

  FavouritePreference({required this.sharedPreferences});


  void addToFavourite(int item){
    List<String> favourites = [];
    if(sharedPreferences.containsKey(FAVOURITE_KEY)){
      favourites = sharedPreferences.getStringList(FAVOURITE_KEY)!;
    }
    favourites.add(item.toString());
    sharedPreferences.setStringList(FAVOURITE_KEY, favourites);
  }

  void removeFromFavourite(int item){
    List<String> favourites = [];
    if(sharedPreferences.containsKey(FAVOURITE_KEY)){
      favourites = sharedPreferences.getStringList(FAVOURITE_KEY)!;
    }
    favourites.remove(item.toString());
    sharedPreferences.setStringList(FAVOURITE_KEY, favourites);
  }

  void toggleFavourite(int item){
    if(isFavourite(item)){
      removeFromFavourite(item);
    }else{
      addToFavourite(item);
    }
  }

  List<int> getFavouriteList(){
    List<String> favourites = [];
    if(sharedPreferences.containsKey(FAVOURITE_KEY)){
      favourites = sharedPreferences.getStringList(FAVOURITE_KEY)!;
    }
    return favourites.map((e) => int.parse(e)).toList();
  }

  bool isFavourite(int item){
    List<String> favourites = [];
    if(sharedPreferences.containsKey(FAVOURITE_KEY)){
      favourites = sharedPreferences.getStringList(FAVOURITE_KEY)!;
    }
    return favourites.contains(item.toString());
  }

}