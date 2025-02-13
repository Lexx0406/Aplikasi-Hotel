import 'package:flutter/material.dart';
import 'package:penginapan/detail_data.dart';
import 'package:penginapan/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Page',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Consumer<FavoriteProvider>(
        builder: (context, inn, child){
          final favorite = inn.favoriteInn;
          return switch(favorite.isNotEmpty){
            true => ListView.builder(
                itemCount: favorite.length,
                itemBuilder: (context,index){
                  final dataInn = favorite[index];
                  return GestureDetector(
                  onTap: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => DetailData(inn: dataInn,),));
                    },
                    child: Card(
                      child: Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              constraints: const BoxConstraints(
                                maxWidth: double.infinity,
                                maxHeight: 200,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  dataInn.gambar,
                                  fit: BoxFit.cover,
                                  width: 150,
                                ),
                              ),
                            ),
                          
                            const SizedBox(
                              width: 12,
                            ),
                        
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    dataInn.title
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    dataInn.shortLocation
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            _ => Center(
              child: Text("Favorite is Empty"))
          };
        },
      ),
    );
  }
}