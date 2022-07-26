// To parse this JSON data, do
//
//     final detailHama = detailHamaFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

DetailHama detailHamaFromJson(String str) =>
    DetailHama.fromJson(json.decode(str));

String detailHamaToJson(DetailHama data) => json.encode(data.toJson());

class DetailHama {
  DetailHama({
    required this.status,
    required this.message,
    required this.hama,
    required this.basisPengetahuan,
    required this.solusi,
  });

  bool status;
  String message;
  List<Hama> hama;
  List<BasisPengetahuan> basisPengetahuan;
  List<Solusi> solusi;

  factory DetailHama.fromJson(Map<String, dynamic> json) => DetailHama(
        status: json["status"],
        message: json["message"],
        hama: List<Hama>.from(json["hama"].map((x) => Hama.fromJson(x))),
        basisPengetahuan: List<BasisPengetahuan>.from(
            json["basis_pengetahuan"].map((x) => BasisPengetahuan.fromJson(x))),
        solusi:
            List<Solusi>.from(json["solusi"].map((x) => Solusi.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "hama": List<dynamic>.from(hama.map((x) => x.toJson())),
        "basis_pengetahuan":
            List<dynamic>.from(basisPengetahuan.map((x) => x.toJson())),
        "solusi": List<dynamic>.from(solusi.map((x) => x.toJson())),
      };
}

class BasisPengetahuan {
  BasisPengetahuan({
    required this.kodePengetahuan,
    required this.kodeHama,
    required this.kodeGejala,
    required this.nilaiMb,
    required this.nilaiMd,
    required this.nilaiCf,
    required this.namaGejala,
  });

  String kodePengetahuan;
  String kodeHama;
  String kodeGejala;
  String nilaiMb;
  String nilaiMd;
  String nilaiCf;
  String namaGejala;

  factory BasisPengetahuan.fromJson(Map<String, dynamic> json) =>
      BasisPengetahuan(
        kodePengetahuan: json["kode_pengetahuan"],
        kodeHama: json["kode_hama"],
        kodeGejala: json["kode_gejala"],
        nilaiMb: json["nilai_mb"],
        nilaiMd: json["nilai_md"],
        nilaiCf: json["nilai_cf"],
        namaGejala: json["nama_gejala"],
      );

  Map<String, dynamic> toJson() => {
        "kode_pengetahuan": kodePengetahuan,
        "kode_hama": kodeHama,
        "kode_gejala": kodeGejala,
        "nilai_mb": nilaiMb,
        "nilai_md": nilaiMd,
        "nilai_cf": nilaiCf,
        "nama_gejala": namaGejala,
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
