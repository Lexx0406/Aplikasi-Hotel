import 'package:flutter/material.dart';
import 'package:penginapan/list.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Aplikasi Hotel',
            style: TextStyle(color: Colors.white),
            ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://png.pngtree.com/thumb_back/fh260/background/20220311/pngtree-bed-rest-bedroom-five-star-hotel-image_990208.jpg",
               ),
            ),
          ),
          child: Center(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ListPage()));
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Text("Masuk ke aplikasi", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold),)),
              ),
            ),
        ),
      ),
      );
  }
}