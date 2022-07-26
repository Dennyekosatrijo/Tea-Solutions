import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/tampilan_awal/artikelteh/artikel.dart';
import 'package:tea_solutions/tampilan_riwayat/riwayat.dart';
import 'package:tea_solutions/template/custome_template.dart';
import 'package:tea_solutions/tampilan_info_hama/infohama.dart';
import 'package:tea_solutions/tampilan_diagnosa/diagnosa.dart';
import 'package:tea_solutions/tampilan_petunjuk_penggunaan/petunjuk.dart';

class Beranda extends StatelessWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bggreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Text('SELAMAT DATANG,',
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
                        ),
                        textAlign: TextAlign.center),
                    Text(
                      'Sistem Pakar Diagnosis Hama Pada',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 22,
                        color: textgreen2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Tanaman Teh',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 22,
                        color: textgreen2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: bgwhite),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/images/diagnosa_beranda.png',
                        height: 100,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(children: [
                            Text(
                              'Proses Diagnosis ',
                              style: GoogleFonts.nunito(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Hama Teh',
                              style: GoogleFonts.nunito(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ]),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: SizedBox(
                              width: 120,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: bggreen2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                                onPressed: () => {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const DiagnosaPage();
                                  }))
                                },
                                child: Text(
                                  'MULAI',
                                  style: GoogleFonts.nunito(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const InfoHama();
                    }))
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    width: double.infinity,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: bgwhite),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/pest.png',
                          width: 90,
                          height: 90,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(children: [
                              Text(
                                'Jenis - Jenis',
                                style: GoogleFonts.nunito(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Hama Teh',
                                style: GoogleFonts.nunito(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Artikel();
                    }))
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: bgwhite),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/green-tea.png',
                            width: 50,
                            height: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Pelajari Tentang',
                                style: GoogleFonts.nunito(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Tanaman Teh',
                                style: GoogleFonts.nunito(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Petunjuk()));
        },
        backgroundColor: bggreen2,
        child: const Icon(Icons.info_outline_rounded),
      ),
    );
  }

  // Widget buildSheet() => DraggableScrollableSheet(
  //       initialChildSize: 0.7,
  //       minChildSize: 0.5,
  //       maxChildSize: 0.9,
  //       builder: (_, controller) => Container(
  //         decoration: const BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
  //         ),
  //         padding: const EdgeInsets.only(left: 30, right: 30),
  //         child: SingleChildScrollView(
  //           child: ListView(
  //             shrinkWrap: true,
  //             primary: false,
  //             controller: controller,
  //             children: [
  //               const Icon(
  //                 Icons.minimize_outlined,
  //                 color: Colors.grey,
  //               ),
  //               // Container(
  //               //     // child: Center(
  //               //     //   child:
  //               //     //   Image.asset(
  //               //     //     'assets/img/text.png',
  //               //     //     width: double.infinity,
  //               //     //     height: 40,
  //               //     //   ),
  //               //     // ),
  //               //     ),
  //               // Divider(
  //               //   thickness: 1,
  //               //   height: 25,
  //               // ),
  //               const SizedBox(
  //                 height: 10,
  //               ),
  //               Center(
  //                 child: Container(
  //                   child: Stack(
  //                     children: [
  //                       Image.asset(
  //                         'assets/images/tesgambar.png',
  //                         width: double.infinity,
  //                         height: 170,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //               const SizedBox(
  //                 height: 30,
  //               ),
  //               Container(
  //                 padding: const EdgeInsets.all(10.0),
  //                 margin:
  //                     EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  //                 width: double.infinity,
  //                 height: 375,
  //                 decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(20.0),
  //                     color: bggreen2),
  //                 child: Column(
  //                   children: [
  //                     Text(
  //                       'Sejarah Tanaman Teh',
  //                       textAlign: TextAlign.center,
  //                       style: GoogleFonts.oswald(
  //                         fontSize: 24,
  //                         fontWeight: FontWeight.bold,
  //                         color: Colors.white,
  //                       ),
  //                     ),
  //                     const Padding(
  //                       padding: EdgeInsets.symmetric(horizontal: 20.0),
  //                       child: Divider(
  //                         color: Colors.white,
  //                         height: 30,
  //                         thickness: 1,
  //                       ),
  //                     ),
  //                     Padding(
  //                       padding: const EdgeInsets.only(top: 2.0),
  //                       child: Text(
  //                         'Dari hasil diagnosa diatas, dapat disimpulkan bahwa hama yang menyerang tanaman teh adalah',
  //                         textAlign: TextAlign.center,
  //                         style: GoogleFonts.nunito(
  //                           fontSize: 18,
  //                           color: Colors.white,
  //                           fontWeight: FontWeight.bold,
  //                         ),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 15,
  //                     ),
  //                     Container(
  //                       height: 150,
  //                       width: 250,
  //                       margin: const EdgeInsets.all(5.0),
  //                     ),
  //                     SizedBox(
  //                       height: 10,
  //                     ),
  //                     Text(
  //                       'Diagnosa Penyakit Burung Murai Batu Menggunakan Metode Forward Chaining Dan Certainty Factor ini merupakan hasil karya tugas akhir mahasiswa jurusan Teknologi Informasi dengan Program Studi Teknik Informatika tahun 2018.',
  //                       textAlign: TextAlign.center,
  //                       style: GoogleFonts.nunito(
  //                         fontSize: 18,
  //                         color: Colors.white,
  //                         fontWeight: FontWeight.bold,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               Container(
  //                 margin: EdgeInsets.symmetric(horizontal: 10.0),
  //                 padding: EdgeInsets.all(10.0),
  //                 width: double.infinity,
  //                 height: 200,
  //                 decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(18), color: list),
  //                 child: Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       Text(
  //                         'Sejarah Tanaman Teh',
  //                         style: GoogleFonts.nunito(
  //                           fontSize: 18,
  //                           fontWeight: FontWeight.bold,
  //                         ),
  //                       ),
  //                       SizedBox(
  //                         height: 5,
  //                       ),
  //                       Expanded(
  //                         child: Text(
  //                           'Diagnosa Penyakit Burung Murai Batu Menggunakan Metode Forward Chaining Dan Certainty Factor ini merupakan hasil karya tugas akhir mahasiswa jurusan Teknologi Informasi dengan Program Studi Teknik Informatika tahun 2018.',
  //                           style: GoogleFonts.nunito(
  //                             fontSize: 18,
  //                             fontWeight: FontWeight.w600,
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //               const SizedBox(
  //                 height: 10,
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     );
}
