import 'package:get_it/get_it.dart';
import 'package:instant_grrocery_delivery/data_source/db/cart_database.dart';
import 'package:instant_grrocery_delivery/data_source/pref/pref_favourite.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controller/cart_database_controller.dart';
import '../controller/favourite_controller.dart';
import '../core/graph_api_client.dart';

final locator = GetIt.instance;

void setup() async {
  locator.registerLazySingleton(() => GraphQLService());

  locator.registerLazySingleton<CartDatabase>(() => CartDatabase.instance);
  locator.registerSingletonAsync<SharedPreferences>(() async {
    return SharedPreferences.getInstance();
  }, signalsReady: false);
  locator.registerLazySingleton(() => FavouritePreference(sharedPreferences: locator.get()));

  locator.registerLazySingleton(() => CartDatabaseController(cartDatabase: locator.get()));
  locator.registerLazySingleton(() => FavouriteController(favouritePreference: locator.get()));
}