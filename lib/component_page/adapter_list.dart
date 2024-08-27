import 'package:flutter/material.dart';
import 'package:latihan11pplg2_2024/Models/model_siswa.dart';
import 'package:latihan11pplg2_2024/widgets/my_text.dart';

class AdapterSiswa extends StatelessWidget {
  final ModelSiswa modelSiswa;

  const AdapterSiswa({super.key, required this.modelSiswa});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: MyText(
        modelSiswa: modelSiswa,
      ),
    );
  }
}
