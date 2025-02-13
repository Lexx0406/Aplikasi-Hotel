import 'package:flutter/material.dart';

class FavoriteIconProvider extends ChangeNotifier{
  bool _isFavorite = false;

  bool get isFavorite => _isFavorite;

  set setIsFavorite (bool icon){
    _isFavorite = icon;
    notifyListeners();
  }
}