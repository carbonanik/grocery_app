import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/data_source/local/favorite_local.dart';
import 'package:instant_grrocery_delivery/data_source/local/impl/favorite_local_impl.dart';

final favoriteLocalProvider = Provider((ref) => FavoriteLocalImpl());

// =================== DataModel =====================

class FavoriteChangeNotifier extends ChangeNotifier {
  FavoriteChangeNotifier(this.ref) {
    updateFavoriteList();
  }

  Ref ref;

  final Map<int, bool> _favoriteList = {};

  UnmodifiableMapView<int, bool> get favoriteList =>
      UnmodifiableMapView(_favoriteList);

  bool getIsFavorite(productId) {
    return favoriteList[productId] ?? false;
  }

  void setIsFavorite(int productId, bool isFavorite)  {
    ref.read(favoriteLocalProvider).setIsFavorite(productId, isFavorite);
    updateFavoriteList();
  }

  void updateFavoriteList() {
    final ids = ref.read(favoriteLocalProvider).getFavoriteIds();
    _favoriteList.clear();
    _favoriteList.addAll(ids);
    notifyListeners();
  }

  List<int> getFavoriteIdList() {
    List<int> favIds = [];
    for (var key in favoriteList.keys) {
      if (favoriteList[key] == true) {
        favIds.add(key);
      }
    }
    return favIds;
  }
}

final favoriteProvider = ChangeNotifierProvider(
  (ref) => FavoriteChangeNotifier(ref),
);
