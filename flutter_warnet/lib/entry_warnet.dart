import 'package:flutter/material.dart';
import 'warnet.dart';
import 'result_page.dart';

class EntryWarnetForm extends StatefulWidget {
  @override
  _EntryWarnetFormState createState() => _EntryWarnetFormState();
}

class _EntryWarnetFormState extends State<EntryWarnetForm> {
  final _formKey = GlobalKey<FormState>();
  final _kodeController = TextEditingController();
  final _namaController = TextEditingController();
  final _jenisController = TextEditingController();
  DateTime? _jamMasuk;
  DateTime? _jamKeluar;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      if (_jamMasuk == null || _jamKeluar == null) {
        // Tampilkan pesan kesalahan jika waktu belum dipilih
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Silakan pilih jam masuk dan jam keluar')),
        );
        return;
      }

      final pelanggan = Pelanggan(
        kodepelanggan: _kodeController.text,
        namapelanggan: _namaController.text,
        jenispelanggan: _jenisController.text,
      );

      final warnet = Warnet(
        pelanggan: pelanggan,
        tglMasuk: DateTime.now(),
        jamMasuk: _jamMasuk,
        jamKeluar: _jamKeluar,
      );

      final totalBayar = warnet.hitungTotalBayar();

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(
            totalBayar: totalBayar,
            kodePelanggan: pelanggan.kodepelanggan!,
            namaPelanggan: pelanggan.namapelanggan!,
            jenisPelanggan: pelanggan.jenispelanggan!,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entry Warnet', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _kodeController,
                decoration: InputDecoration(
                  labelText: 'Kode Pelanggan',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.blue[50],
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan kode pelanggan';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _namaController,
                decoration: InputDecoration(
                  labelText: 'Nama Pelanggan',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.blue[50],
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan nama pelanggan';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _jenisController.text.isNotEmpty ? _jenisController.text : null,
                decoration: InputDecoration(
                  labelText: 'Jenis Pelanggan',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.blue[50],
                ),
                items: ['Regular', 'VIP', 'GOLD'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _jenisController.text = newValue!;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Pilih jenis pelanggan';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  _jamMasuk = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ).then((time) => DateTime(
                        DateTime.now().year,
                        DateTime.now().month,
                        DateTime.now().day,
                        time?.hour ?? 0,
                        time?.minute ?? 0,
                      ));
                },
                child: Text('Pilih Jam Masuk'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  _jamKeluar = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ).then((time) => DateTime(
                        DateTime.now().year,
                        DateTime.now().month,
                        DateTime.now().day,
                        time?.hour ?? 0,
                        time?.minute ?? 0,
                      ));
                },
                child: Text('Pilih Jam Keluar'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Hitung Total Bayar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
