// To parse this JSON data, do
//
//     final listHama = listHamaFromJson(jsonString);

import 'dart:convert';

ListHama listHamaFromJson(String str) => ListHama.fromJson(json.decode(str));

String listHamaToJson(ListHama data) => json.encode(data.toJson());

class ListHama {
  ListHama({
    required this.status,
    required this.message,
    required this.data,
  });

  bool status;
  String message;
  List<Datum> data;

  factory ListHama.fromJson(Map<String, dynamic> json) => ListHama(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.kodeHama,
    required this.namaHama,
    required this.gambar,
  });

  String kodeHama;
  String namaHama;
  String gambar;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
