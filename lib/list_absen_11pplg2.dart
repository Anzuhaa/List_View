import 'package:flutter/material.dart';
import 'package:latihan11pplg2_2024/Models/model_siswa.dart';
import 'package:latihan11pplg2_2024/component_page/adapter_list.dart';

class ListAbsen11pplg2 extends StatefulWidget {
  const ListAbsen11pplg2({super.key});

  @override
  State<ListAbsen11pplg2> createState() => _ListAbsen11pplg2State();
}

class _ListAbsen11pplg2State extends State<ListAbsen11pplg2> {
  // dummy data
  List<ModelSiswa> dataSiswa = [
    ModelSiswa(Icon(Icons.person), "Satria", "28"),
    ModelSiswa(Icon(Icons.person), "Jihad", "11"),
    ModelSiswa(Icon(Icons.person), "Kaisar", "12"),
    ModelSiswa(Icon(Icons.person), "Kenas", "13"),
    ModelSiswa(Icon(Icons.person_2), "Syifa", "31"),
    ModelSiswa(Icon(Icons.person_2), "Zesya", "36"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Absensi"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: dataSiswa.length,
          itemBuilder: (context, index) {
            return AdapterSiswa(modelSiswa: dataSiswa[index]);
          },
        ),
      ),
    );
  }
}
