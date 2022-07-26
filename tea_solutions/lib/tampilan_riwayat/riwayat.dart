import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/tampilan_awal/beranda.dart';
import 'package:tea_solutions/tampilan_riwayat/detailriwayat.dart';
import 'package:tea_solutions/template/custome_template.dart';
import 'package:tea_solutions/class_list_api/listhama.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({Key? key}) : super(key: key);

  @override
  State<Riwayat> createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const Beranda();
              }),
            )
          },
        ),
        title: const Text(
          'Info Hama Tanaman Teh',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: newgreen,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: Column(
              children: [
                Text('Berikut Riwayat Hasil Diagnosa Hama Tanaman Teh',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 25,
                      color: textgreen,
                    ),
                    textAlign: TextAlign.center),
                Text('Yang Sudah Pernah Anda Lakukan Sebelumnya',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 25,
                      color: textgreen,
                    ),
                    textAlign: TextAlign.center),
              ],
            ),
          ),
          SizedBox(
            height: 550,
            child: ListView.builder(
              itemCount: hama.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const DetailRiwayat();
                      }),
                    );
                  },
                  child: Container(
                    height: 60,
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: newgreen),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(hama[index],
                            style: GoogleFonts.oswald(
                                fontSize: 23, color: Colors.white)),
                        Icon(
                          Icons.search_off_rounded,
                          size: 20,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
