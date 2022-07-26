import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/models/listhama.dart';
import 'package:tea_solutions/service/apiteh.dart';
import 'package:tea_solutions/tampilan_awal/beranda.dart';
import 'package:tea_solutions/tampilan_info_hama/detailpenyakit.dart';
import 'package:tea_solutions/template/custome_template.dart';

class InfoHama extends StatefulWidget {
  const InfoHama({Key? key}) : super(key: key);

  @override
  State<InfoHama> createState() => _InfoHamaState();
}

class _InfoHamaState extends State<InfoHama> {
  final ApiTeh api = ApiTeh();
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
        backgroundColor: bggreen,
        centerTitle: true,
      ),
      backgroundColor: bgwhite,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Berikut Daftar Hama Yang Sering',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 22,
                        color: textgreen,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                  Text('Menyerang Tanaman Teh',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 22,
                        color: textgreen,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 550,
            child: FutureBuilder<List<Datum>?>(
                future: api.getdatahama(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        final datahama = snapshot.data![index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailHamaPage(hama: datahama);
                              }),
                            );
                          },
                          child: Container(
                            height: 60,
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            margin: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: bggreen2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(datahama.namaHama,
                                      style: GoogleFonts.nunito(
                                          fontSize: 18, color: Colors.white)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.search_off_rounded,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
          ),
        ],
      ),
    );
  }
}
