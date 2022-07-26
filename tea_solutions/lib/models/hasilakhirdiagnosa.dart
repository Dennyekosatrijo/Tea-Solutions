// To parse this JSON data, do
//
//     final hasilAkhirDiagnosa = hasilAkhirDiagnosaFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

HasilAkhirDiagnosa hasilAkhirDiagnosaFromJson(String str) =>
    HasilAkhirDiagnosa.fromJson(json.decode(str));

String hasilAkhirDiagnosaToJson(HasilAkhirDiagnosa data) =>
    json.encode(data.toJson());

class HasilAkhirDiagnosa {
  HasilAkhirDiagnosa({
    required this.status,
    required this.message,
    required this.data,
    required this.solusi,
  });

  bool status;
  String message;
  Data data;
  List<Solusi> solusi;

  factory HasilAkhirDiagnosa.fromJson(Map<String, dynamic> json) =>
      HasilAkhirDiagnosa(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
        solusi:
            List<Solusi>.from(json["solusi"].map((x) => Solusi.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
        "solusi": List<dynamic>.from(solusi.map((x) => x.toJson())),
      };
}

class Data {
  Data({
    required this.kodeHama,
    required this.hasilHama,
    required this.hasilGejala,
    required this.hasilNilai,
    required this.hama,
  });

  String kodeHama;
  List<HasilHama> hasilHama;
  List<HasilGejala> hasilGejala;
  String hasilNilai;
  Hama hama;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        kodeHama: json["kode_hama"],
        hasilHama: List<HasilHama>.from(
            json["hasil_hama"].map((x) => HasilHama.fromJson(x))),
        hasilGejala: List<HasilGejala>.from(
            json["hasil_gejala"].map((x) => HasilGejala.fromJson(x))),
        hasilNilai: json["hasil_nilai"],
        hama: Hama.fromJson(json["hama"]),
      );

  Map<String, dynamic> toJson() => {
        "kode_hama": kodeHama,
        "hasil_hama": List<dynamic>.from(hasilHama.map((x) => x.toJson())),
        "hasil_gejala": List<dynamic>.from(hasilGejala.map((x) => x.toJson())),
        "hasil_nilai": hasilNilai,
        "hama": hama.toJson(),
      };
}

class Hama {
  Hama({
    required this.kodeHama,
    required this.namaHama,
    required this.gambar,
  });

  String kodeHama;
  String namaHama;
  String gambar;

  factory Hama.fromJson(Map<String, dynamic> json) => Hama(
        kodeHama: json["kode_hama"],
        namaHama: json["nama_hama"],
        gambar: json["gambar"],
      );

  Map<String, dynamic> toJson() => {
        "kode_hama": kodeHama,
        "nama_hama": namaHama,
        "gambar": gambar,
      };
}

class HasilGejala {
  HasilGejala({
    required this.kodeGejala,
    required this.namaGejala,
    required this.namaKondisi,
  });

  String kodeGejala;
  String namaGejala;
  String namaKondisi;

  factory HasilGejala.fromJson(Map<String, dynamic> json) => HasilGejala(
        kodeGejala: json["kode_gejala"],
        namaGejala: json["nama_gejala"],
        namaKondisi: json["nama_kondisi"],
      );

  Map<String, dynamic> toJson() => {
        "kode_gejala": kodeGejala,
        "nama_gejala": namaGejala,
        "nama_kondisi": namaKondisi,
      };
}

class HasilHama {
  HasilHama({
    required this.kodeHama,
    required this.namaHama,
    required this.gambar,
    required this.nilaiPerhitungan,
    required this.solusi,
  });

  String kodeHama;
  String namaHama;
  String gambar;
  String nilaiPerhitungan;
  String solusi;

  factory HasilHama.fromJson(Map<String, dynamic> json) => HasilHama(
        kodeHama: json["kode_hama"],
        namaHama: json["nama_hama"],
        gambar: json["gambar"],
        nilaiPerhitungan: json["nilai_perhitungan"],
        solusi: json["solusi"],
      );

  Map<String, dynamic> toJson() => {
        "kode_hama": kodeHama,
        "nama_hama": namaHama,
        "gambar": gambar,
        "nilai_perhitungan": nilaiPerhitungan,
        "solusi": solusi,
      };
}

class Solusi {
  Solusi({
    required this.kodeSolusi,
    required this.kodeHama,
    required this.solusi,
    required this.slug,
  });

  String kodeSolusi;
  String kodeHama;
  String solusi;
  String slug;

  factory Solusi.fromJson(Map<String, dynamic> json) => Solusi(
        kodeSolusi: json["kode_solusi"],
        kodeHama: json["kode_hama"],
        solusi: json["solusi"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "kode_solusi": kodeSolusi,
        "kode_hama": kodeHama,
        "solusi": solusi,
        "slug": slug,
      };
}
