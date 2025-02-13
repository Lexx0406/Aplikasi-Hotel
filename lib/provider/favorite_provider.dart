import 'package:flutter/material.dart';
import 'package:penginapan/model/inn_data.dart';

class FavoriteProvider extends ChangeNotifier{
  final List<InnData> _favoriteInn = [];

  List<InnData> get favoriteInn => _favoriteInn;

  void addToFavorite(InnData inn){
    _favoriteInn.add(inn);
    notifyListeners();
  }

  bool checkedFavorite(InnData inn){
    final dataInn = _favoriteInn.where((element)=> element.title == inn.title);
    return dataInn.isNotEmpty;
  }

  void removeFromFavorite(InnData inn){
    _favoriteInn.removeWhere((element)=> element.title == inn.title);
    notifyListeners();
  }
}