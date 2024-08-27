import 'package:flutter/material.dart';
import 'package:latihan11pplg2_2024/Models/model_siswa.dart';

class MyText extends StatelessWidget {
  final ModelSiswa modelSiswa;

  const MyText({super.key, required this.modelSiswa});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xFF32323c),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(
            modelSiswa.icons.icon,
            color: Colors.white,
          ),
          SizedBox(width: 8),
          Text(
            modelSiswa.name,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'MontserratSemi',
            ),
          ),
          SizedBox(width: 8),
          Text(
            modelSiswa.absen,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'MontserratSemi',
            ),
          ),
        ],
      ),
    );
  }
}
