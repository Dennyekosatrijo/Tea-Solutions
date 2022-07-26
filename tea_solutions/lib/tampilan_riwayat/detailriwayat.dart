import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/tampilan_diagnosa/diagnosa.dart';
import 'package:tea_solutions/tampilan_riwayat/riwayat.dart';
import 'package:tea_solutions/template/custome_template.dart';

class DetailRiwayat extends StatefulWidget {
  const DetailRiwayat({Key? key}) : super(key: key);

  @override
  State<DetailRiwayat> createState() => _DetailRiwayatState();
}

class _DetailRiwayatState extends State<DetailRiwayat> {
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
                return const Riwayat();
              }),
            )
          },
        ),
        title: Text('Hasil Diagnosa Hama Tanaman Teh',
            style: GoogleFonts.bebasNeue(fontSize: 20, color: Colors.white)),
        backgroundColor: newgreen,
      ),
      // container gejala
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  width: 250,
                  height: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: newgreen),
                  child: Column(
                    children: [
                      Text(
                        'Gejala Yang Telah Dipilih',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.oswald(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Berikut adalah gejala - gejala yang telah dipilih sebelumnya :',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.oswald(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                            itemCount: 6,
                            itemBuilder: ((context, index) {
                              return Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 10.0, right: 20.0),
                                      child: Text(
                                        '- Daun rontok dan tampak batang daun layu yang mengakibatkan bagian perdu mengalami kebotakan',
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.oswald(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            })),
                      )
                    ],
                  ),
                ),
                // hasil diagnosa
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  width: 250,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: newgreen),
                  child: Column(
                    children: [
                      Text(
                        'Hasil Diagnosa',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.oswald(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Dari gejala - gejala diatas, kemungkinan tanaman teh tersebut terserang hama sebagai berikut :',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.oswald(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            itemCount: 3,
                            itemBuilder: ((context, index) {
                              return Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 10.0, right: 20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '- Empoasca',
                                            style: GoogleFonts.oswald(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '90%',
                                            style: GoogleFonts.oswald(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            })),
                      )
                    ],
                  ),
                ),
                // hama dengan nilai tertinggi
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  width: 250,
                  height: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: newgreen),
                  child: Column(
                    children: [
                      Text(
                        'Hama Dengan Nilai Tertinggi',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.oswald(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Dari hasil diagnosa diatas, dapat disimpulkan bahwa hama yang menyerang tanaman teh adalah Empoasca dengan nilai perhitungan 90%',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.oswald(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/tesgambar.png',
                        width: 275,
                        height: 200,
                      ),
                      Text(
                        'Empoasca (90%)',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.oswald(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                // button solusi penanganan
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 70.0, vertical: 10.0),
                  child: SizedBox(
                    width: 105,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: textgreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      onPressed: () => showModalBottomSheet(
                        context: context,
                        builder: (context) => buildSheet(),
                        // enableDrag: false,
                        // isDismissible: false,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                      ),
                      child: Text(
                        'Solusi Penanganan',
                        style: GoogleFonts.oswald(
                            fontSize: 23, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  // pop up solusi penanganan
  Widget buildSheet() => DraggableScrollableSheet(
        initialChildSize: 0.9,
        minChildSize: 0.5,
        maxChildSize: 0.9,
        builder: (_, controller) => Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          padding: const EdgeInsets.all(16),
          child: ListView(
            shrinkWrap: true,
            primary: false,
            controller: controller,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  child: Center(
                    child: Text(
                      'Solusi Penanganan Terkait Hama Yang Menyerang Tanaman Teh Anda',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.oswald(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: textgreen,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: SizedBox(
                  height: 400,
                  child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: ((context, index) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, right: 20.0),
                                child: Text(
                                  '- Daun rontok dan tampak batang daun layu yang mengakibatkan bagian perdu mengalami kebotakan',
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.oswald(
                                    fontSize: 18,
                                    color: textgreen,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      })),
                ),
              ),
            ],
          ),
        ),
      );
}
