import 'dart:convert';

import 'package:tea_solutions/models/listgejala.dart';
import 'package:tea_solutions/models/listhama.dart';
import 'package:tea_solutions/service/apiurl.dart';
import 'package:http/http.dart';

import '../models/listdetail.dart';

class ApiTeh {
  final String apiUrl = '$api_url/API_Teh';
  final String apiUrlGejala = '$api_url/API_Teh/gejala';

  Future<List<Datum>?> getdatahama() async {
    try {
      Response res = await get(Uri.parse(apiUrl));

      if (res.statusCode == 200) {
        final body = jsonDecode(res.body);

        if (body['status']) {
          final response = ListHama.fromJson(body);

          return response.data;
        } else {
          throw "Failed to load cases list";
        }
      }
    } catch (e) {
      // throw e.toString();
      print(e.toString());
    }
  }

  Future<DetailHama> getHamaById(String id) async {
    final response =
        await get(Uri.parse('$api_url/API_Teh/Hama?kode_hama=$id'));

    if (response.statusCode == 200) {
      return DetailHama.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed To Load Hama');
    }
  }

  Future<List<Gejala>?> getgejala() async {
    try {
      Response res = await get(Uri.parse(apiUrlGejala));

      if (res.statusCode == 200) {
        final body = jsonDecode(res.body);

        if (body['status']) {
          final response = ListGejala.fromJson(body);

          return response.gejala;
        } else {
          throw "Field to load cases list";
        }
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
