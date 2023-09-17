import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama; //contoh data yang di-passing
  final String nim; //contoh data yang di-passing
  final int usia; //contoh data yang di-passing
  
  const TampilData({Key? key, 
  required this.nama,
  required this.nim,
  required this.usia,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Container(margin: const EdgeInsets.all(10),
      child: Text('Nama saya $nama, NIM $nim, dan umur saya adalah $usia tahun'),),
    );
  }
}
