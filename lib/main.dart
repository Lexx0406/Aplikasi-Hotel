import 'package:penginapan/homepage.dart';
import 'package:flutter/material.dart';
import 'package:penginapan/provider/favorite_provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
    create: (context)=>FavoriteProvider(),
    child: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}