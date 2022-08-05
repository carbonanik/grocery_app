import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/controller/cart_database_controller.dart';
import 'package:instant_grrocery_delivery/controller/favourite_controller.dart';
import 'package:instant_grrocery_delivery/data_source/pref/pref_favourite.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data_source/db/cart_database.dart';
import '../core/graph_api_client.dart';

Future<void> init() async {
  final sharedPreference = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreference);

  Get.lazyPut(() => GraphQLService());
  Get.lazyPut(() => FavouritePreference(sharedPreferences: Get.find()));

  Get.lazyPut(() => CartDatabaseController(cartDatabase: CartDatabase.instance));
  Get.lazyPut(() => FavouriteController(favouritePreference: Get.find()));
}