import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:penginapan/favorite_icon.dart';
import 'package:penginapan/model/inn_data.dart';
import 'package:penginapan/provider/favorite_icon_provider.dart';
import 'package:provider/provider.dart';

class DetailData extends StatelessWidget {
  final InnData inn;
  const DetailData({super.key, required this.inn});

  @override
  Widget build(BuildContext context) {
    String harga = NumberFormat('#,###', 'id_ID').format(inn.harga);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          inn.title,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                inn.title,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
              ),
              const SizedBox(height: 12.0),
              Row(
                children: [
                  Icon(Icons.location_on),
                  Expanded(child: Text(inn.location)),
                ],
              ),
              const SizedBox(height: 12.0),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 600) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(inn.gambar),
                        const SizedBox(width: 12.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rp $harga/Malam",
                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                inn.deskripsi,
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(inn.gambar, width: double.infinity),
                        const SizedBox(height: 12.0),
                        Text(
                          "Rp $harga/Malam",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),
                        ),
                        const SizedBox(height: 12.0),
                        Text(
                          inn.deskripsi,
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ChangeNotifierProvider(
        create: (context) => FavoriteIconProvider(),
        child: FavoriteIcon(innData: inn),
      ),
    );
  }
}
