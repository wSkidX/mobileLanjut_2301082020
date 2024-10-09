import 'package:flutter/foundation.dart';

class Pelanggan {
  final String? kodepelanggan;
  final String? namapelanggan;
  final String? jenispelanggan;

  Pelanggan({
    @required this.kodepelanggan,
    @required this.namapelanggan,
    @required this.jenispelanggan,
  });
}

class Warnet {
  final Pelanggan pelanggan;
  final DateTime? tglMasuk;
  final DateTime? jamMasuk;
  final DateTime? jamKeluar;
  final double tarifPerJam = 10000;

  Warnet({
    required this.pelanggan,
    @required this.tglMasuk,
    @required this.jamMasuk,
    @required this.jamKeluar,
  });

  double hitungTotalBayar() {
    if (jamMasuk == null || jamKeluar == null) return 0;

    final lama = jamKeluar!.difference(jamMasuk!).inHours;
    double diskon = 0;

    if (pelanggan.jenispelanggan == "VIP" && lama > 2) {
      diskon = 0.02;
    } else if (pelanggan.jenispelanggan == "GOLD" && lama > 2) {
      diskon = 0.05;
    }

    final total = lama * tarifPerJam;
    return total - (total * diskon);
  }
}
