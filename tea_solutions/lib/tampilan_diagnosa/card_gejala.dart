import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tea_solutions/models/listgejala.dart';
import 'package:tea_solutions/providers/diagnosa_provider.dart';
import 'package:tea_solutions/tampilan_diagnosa/radio_option.dart';
import 'package:tea_solutions/template/custome_template.dart';

class CardGejala extends StatefulWidget {
  const CardGejala({Key? key, required this.gejala}) : super(key: key);

  final Gejala gejala;

  @override
  State<CardGejala> createState() => _CardGejalaState();
}

class _CardGejalaState extends State<CardGejala> {
  String? selectedValue;

  // void _selectionHandler(String? value) {
  //   setState(() {
  //     selectedValue = value;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final tambahDiagnosa =
        Provider.of<DiagnosaProvider>(context, listen: false);
    return Container(
      height: 120,
      padding: const EdgeInsets.only(top: 10.0, left: 15.0),
      margin: const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: bggreen2),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.gejala.namaGejala,
                  style: GoogleFonts.nunito(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: const Divider(
              thickness: 2,
              color: Colors.white,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyRadioOption<String>(
              value: '1',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                  tambahDiagnosa.addDiagnosa(
                      widget.gejala.kodeGejala, selectedValue!);
                });
              },
              label: 'id1',
              text: 'Phone Gap',
            ),
            MyRadioOption<String>(
              value: '2',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                  tambahDiagnosa.addDiagnosa(
                      widget.gejala.kodeGejala, selectedValue!);
                });
              },
              label: 'id2',
              text: 'Phone Gap',
            ),
            MyRadioOption<String>(
              value: '3',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                  tambahDiagnosa.addDiagnosa(
                      widget.gejala.kodeGejala, selectedValue!);
                });
              },
              label: 'id3',
              text: 'Phone Gap',
            ),
            MyRadioOption<String>(
              value: '4',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                  tambahDiagnosa.addDiagnosa(
                      widget.gejala.kodeGejala, selectedValue!);
                });
              },
              label: 'id4',
              text: 'Phone Gap',
            ),
          ])
        ],
      ),
    );
  }
}
