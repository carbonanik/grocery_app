import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/model/cart_item.dart';

import '../../data_source/hive/favorite_hive.dart';

// =================== DataModel =====================

class FavoriteChangeNotifier extends ChangeNotifier {
  FavoriteChangeNotifier() {
    updateFavorites();
  }

  final Map<int, bool> _favoriteList = {};

  UnmodifiableMapView<int, bool> get favoriteList =>
      UnmodifiableMapView(_favoriteList);

  void updateFavorites() {
    getFavoriteIdsHive().then((value) {
      _favoriteList.clear();
      final mapValue = value as Map;
      for (var key in value.keys) {
        _favoriteList[key] = mapValue[key];
      }
    });
    notifyListeners();
  }

  bool getIsFavorite(productId) {
    return favoriteList[productId] ?? false;
  }

  void setIsFavorite(productId, isFavorite) {
    setIsFavoriteHive(productId, isFavorite).then((value) => updateFavorites());
  }

  List<int> getWhereFavoriteTrue() {
    List<int> favIds = [];
    for (var key in favoriteList.keys) {
      if (favoriteList[key] == true) {
        favIds.add(key);
      }
    }
    return favIds;
  }
}

final favoriteProvider =
    ChangeNotifierProvider((_) => FavoriteChangeNotifier());
