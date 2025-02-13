import 'package:flutter/material.dart';
import 'package:penginapan/model/inn_data.dart';
import 'package:penginapan/provider/favorite_icon_provider.dart';
import 'package:penginapan/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

class FavoriteIcon extends StatefulWidget {
  final InnData innData;
  const FavoriteIcon({super.key, required this.innData});

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {

  @override
  void initState() {
    // TODO: implement initState
    final favoriteProvider = context.read<FavoriteProvider>();
    final favoriteIconProvider = context.read<FavoriteIconProvider>();

    Future.microtask((){
      final favoriteList = favoriteProvider.checkedFavorite(widget.innData);
      favoriteIconProvider.setIsFavorite = favoriteList;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        final favoriteProvider = context.read<FavoriteProvider>();
        final favoriteIcon = context.read<FavoriteIconProvider>();
        final isFavorite = favoriteIcon.isFavorite;

        if (!isFavorite) {
          favoriteProvider.addToFavorite(widget.innData);
        } else {
          favoriteProvider.removeFromFavorite(widget.innData);
        }

        favoriteIcon.setIsFavorite = !isFavorite;
      },
      child: Icon(
        context.watch<FavoriteIconProvider>().isFavorite ? Icons.favorite : Icons.favorite_border
      ),
    );
  }
}