import 'package:flutter/material.dart';
import 'package:tugas_2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);
  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunLahirController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data'),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              _inputFormn('Nama', _namaController),
              _inputFormi('NIM', _nimController),
              _inputFormt('Tahun Lahir', _tahunLahirController),
              ElevatedButton(
                  onPressed: () {
                    String nama = _namaController.text;
                    String nim = _nimController.text;
                    int usia = DateTime.now().year - int.parse(_tahunLahirController.text);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TampilData(nama: nama, nim: nim, usia: usia)));
                  },
                  child: const Text('Simpan'))
            ]
          ),),
    );
  }

  _inputFormn(String inputName, controller) {
    return TextField(
      decoration: InputDecoration(labelText: "Masukan Nama"),
      controller: controller,
    );
  }
  _inputFormi(String inputName, controller) {
    return TextField(
      decoration: InputDecoration(labelText: "Masukan Nim"),
      controller: controller,
    );
  }
  _inputFormt(String inputName, controller) {
    return TextField(
      decoration: InputDecoration(labelText: "Masukan Tahun Lahir"),
      controller: controller,
    );
  }
}
