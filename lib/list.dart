import 'package:flutter/material.dart';
import 'package:penginapan/detail_data.dart';
import 'package:penginapan/favorite.dart';
import 'package:penginapan/model/inn_data.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<InnData> innData = dummyInnData;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotel', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoritePage()));
            },
            child: Row(
              children: [
                Icon(
                  Icons.favorite
                ),

                const SizedBox(
                  width: 4.0,
                ),
            
                Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Text("Favorite")),
                
              ],
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView.builder(
          itemCount: innData.length,
          itemBuilder: (context,index){
            final dataInn = innData[index];
            return GestureDetector(
            onTap: (){
            Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => DetailData(inn: dataInn,),));
              },
              child: Card(
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
            );
          },
        ),
      ),
    );
  }
}
