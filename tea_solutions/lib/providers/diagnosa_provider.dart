import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tea_solutions/models/diagnosa.dart';
import 'package:tea_solutions/models/hasilakhirdiagnosa.dart';

class DiagnosaProvider with ChangeNotifier {
  // Map<String, ModelProviderGejala> _items = {};
  List<String> listjawaban = [];

  HasilAkhirDiagnosa? hasil;

  saveHasil(HasilAkhirDiagnosa hasilValue) {
    hasil = hasilValue;
    notifyListeners();
  }

  resetHasil() {
    hasil = null;
    notifyListeners();
  }

  final Map<String, ModelProviderGejala> _items = {};

  Map<String, ModelProviderGejala> get items => _items;

  void addDiagnosa(String gejalaId, String selectedValue) {
    // _items.putIfAbsent(
    //   gejalaId,
    //   () => ModelProviderGejala(kodeGejala: gejalaId, kodeValue: selectedValue),
    // );
    // print(_items);
    // notifyListeners();

    String value = '${gejalaId}_$selectedValue';

    if (!listjawaban.toString().contains(gejalaId)) {
      listjawaban.add(value);
    } else {
      log('sudah ada');
      final filtered = listjawaban.map((jawaban) {
        if (jawaban.contains(gejalaId)) {
          return '${gejalaId}_$selectedValue';
        } else {
          return jawaban;
        }
      }).toList();

      listjawaban.clear();
      listjawaban.addAll(filtered);
    }

    notifyListeners();
  }

  clearlist() {
    listjawaban.clear();
  }
}
