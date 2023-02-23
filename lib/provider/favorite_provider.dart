import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DataModel extends ChangeNotifier {
  final Map<int, bool> _isFavoriteProducts = {};

  UnmodifiableMapView<int, bool> get isFavoriteProducts =>
      UnmodifiableMapView(_isFavoriteProducts);

  void addIsFavorite(int productId, bool isFavorite) {
    _isFavoriteProducts[productId] = isFavorite;
    notifyListeners();
  }

  bool getIsFavorite(
    int productId,
  ) {
    return _isFavoriteProducts[productId] ?? false;
  }
}

final isFavoriteProductsProvider = ChangeNotifierProvider((_) => DataModel());
