import 'package:flutter/material.dart';
import 'package:wisata_candi_charles/data/candi_data.dart';
import 'package:wisata_candi_charles/models/candi.dart';

class MyWidget extends StatefulWidget {
  const new({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 1: Buat AppBar dengan Title wisata candi
      appBar: AppBar(title: const Text('Wisata Candi')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        padding: const EdgeInsets.all(8),
        itemCount: candiList.length,
        itemBuilder: (context, index) {
          Candi candi = candiList[index];
          //TODO 3: Buat ItemCard, widget, panggil (return di sini)
          // sementara ItemCard belum ada set return null
          return Text(candi.name);

        }
        ),
    );
  }
}
