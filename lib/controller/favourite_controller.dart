import 'package:get/get.dart';

import '../data_source/pref/pref_favourite.dart';

class FavouriteController extends GetxController {

  static const String FAVOURITE_KEY = "favourite";

  final FavouritePreference favouritePreference;

  FavouriteController({required this.favouritePreference});

  final isFavourite = false.obs;


  void addToFavourite(int item){
    favouritePreference.addToFavourite(item);
  }

  void removeFromFavourite(int item){
    favouritePreference.removeFromFavourite(item);
  }

  void toggleFavourite(int item){
    favouritePreference.toggleFavourite(item);
    getIsFavourite(item);
  }

  List<int> getFavouriteList(){
    return favouritePreference.getFavouriteList();
  }

  void getIsFavourite(int item){
    isFavourite.value = favouritePreference.isFavourite(item);
  }

}