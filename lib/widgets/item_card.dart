import 'package:flutter/material.dart';
import 'package:wisata_candi_charles/models/candi.dart';

class ItemCard extends StatelessWidget {
  // TODO 1: Buat Variable
  final Candi candi;
  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Card(
      //TODO 2: set parameter shape, margin dan elevation
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.all(4),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TODO 3: Tambahkan Image widget
          Expanded(
            // TODO 7 : HeroAnimation
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //TODO 4: Tambahkan Text widgetn(nama candi)
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Text(
              candi.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),

          //TODO 5: Tambahkan Text widget(type candi)
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 4),
            child: Text(
              candi.type,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
