// lib/result_page.dart
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double totalBayar;
  final String kodePelanggan;
  final String namaPelanggan;
  final String jenisPelanggan;

  ResultPage({
    required this.totalBayar,
    required this.kodePelanggan,
    required this.namaPelanggan,
    required this.jenisPelanggan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Perhitungan'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kode Pelanggan: $kodePelanggan',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Nama Pelanggan: $namaPelanggan',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Jenis Pelanggan: $jenisPelanggan',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Total Bayar: Rp ${totalBayar.toStringAsFixed(0)}',
                style: TextStyle(fontSize: 24, color: Colors.green, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}