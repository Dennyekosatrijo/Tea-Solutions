import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tea_solutions/models/listgejala.dart';
import 'package:tea_solutions/providers/diagnosa_provider.dart';
import 'package:tea_solutions/service/apiurl.dart';
import 'package:tea_solutions/tampilan_awal/beranda.dart';
import 'package:tea_solutions/tampilan_diagnosa/diagnosa.dart';
import 'package:tea_solutions/template/custome_template.dart';

class HasilDiagnosa extends StatefulWidget {
  const HasilDiagnosa({Key? key}) : super(key: key);

  @override
  State<HasilDiagnosa> createState() => _HasilDiagnosaState();
}

class _HasilDiagnosaState extends State<HasilDiagnosa> {
  final ScrollController _controllerOne = ScrollController();
  final ScrollController _controllerTwo = ScrollController();
  final ScrollController _controllerThree = ScrollController();
  late DiagnosaProvider diagnosaProvider;

  @override
  void initState() {
    super.initState();
    diagnosaProvider = Provider.of<DiagnosaProvider>(context, listen: false);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
          onTap: () => {Navigator.pop(context)},
        ),
        title: Text(
          'Hasil Diagnosa Hama Tanaman Teh',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: bggreen,
        centerTitle: true,
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
                  width: double.infinity,
                  height: 310,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: bggreen2),
                  child: Column(
                    children: [
                      Text(
                        'Gejala Yang Telah Dipilih',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          color: Colors.white,
                          height: 35,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: Scrollbar(
                          controller: _controllerOne,
                          isAlwaysShown: true,
                          showTrackOnHover: true,
                          child: ListView.builder(
                              controller: _controllerOne,
                              itemCount: diagnosaProvider
                                  .hasil!.data.hasilGejala.length,
                              itemBuilder: ((context, index) {
                                final ListGejala = diagnosaProvider
                                    .hasil!.data.hasilGejala[index];
                                return Column(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 10.0, right: 20.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "- ${ListGejala.namaGejala}",
                                          textAlign: TextAlign.justify,
                                          style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5.0),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.radio_button_checked,
                                              color: bgwhite,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "${ListGejala.namaKondisi}",
                                              textAlign: TextAlign.justify,
                                              style: GoogleFonts.nunito(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1,
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    )
                                  ],
                                );
                              })),
                        ),
                      )
                    ],
                  ),
                ),
                // hasil diagnosa
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: bggreen2),
                  child: Column(
                    children: [
                      Text(
                        'Presentase Hasil Diagnosa',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          color: Colors.white,
                          height: 35,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: Scrollbar(
                          controller: _controllerTwo,
                          isAlwaysShown: true,
                          showTrackOnHover: true,
                          child: ListView.builder(
                              controller: _controllerTwo,
                              itemCount:
                                  diagnosaProvider.hasil!.data.hasilHama.length,
                              itemBuilder: ((context, index) {
                                final ListHama = diagnosaProvider
                                    .hasil!.data.hasilHama[index];
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
                                              '- ${ListHama.namaHama}',
                                              style: GoogleFonts.nunito(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              '${ListHama.nilaiPerhitungan} %',
                                              style: GoogleFonts.nunito(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              })),
                        ),
                      )
                    ],
                  ),
                ),
                // hama dengan nilai tertinggi
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  width: double.infinity,
                  height: 650,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: bggreen2),
                  child: Column(
                    children: [
                      Text(
                        'Solusi dan Penanganan',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Divider(
                          color: Colors.white,
                          height: 30,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(
                          'Dari hasil diagnosis diatas, dapat disimpulkan bahwa kemungkinan hama yang menyerang tanaman teh adalah sebagai berikut yang sudah diurutkan dari presentase tertinggi hingga terendah :',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.nunito(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 430,
                        child: Scrollbar(
                          controller: _controllerThree,
                          isAlwaysShown: true,
                          showTrackOnHover: true,
                          child: ListView.builder(
                              controller: _controllerThree,
                              itemCount:
                                  diagnosaProvider.hasil!.data.hasilHama.length,
                              itemBuilder: ((context, index) {
                                final ListHama = diagnosaProvider
                                    .hasil!.data.hasilHama[index];
                                return Column(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '${index + 1}. ${ListHama.namaHama}'
                                      '   '
                                      '(${ListHama.nilaiPerhitungan} %)',
                                      style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      height: 150,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              '$fotourl/assets/images/teh/${ListHama.gambar}'),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(18.0)),
                                        border: Border.all(
                                          width: 0.5,
                                          color: const Color(0xFF423B55),
                                        ),
                                      ),
                                      margin: const EdgeInsets.all(5.0),
                                    ),
                                    Text(
                                      '${ListHama.solusi}',
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.white,
                                      height: 30,
                                      thickness: 1,
                                    ),
                                  ],
                                );
                              })),
                        ),
                      ),
                      // Container(
                      //   height: 150,
                      //   width: 250,
                      //   decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //       image: NetworkImage(
                      //           '$fotourl/assets/images/teh/${diagnosaProvider.hasil!.data.hama.gambar}'),
                      //       fit: BoxFit.fill,
                      //     ),
                      //     borderRadius:
                      //         const BorderRadius.all(Radius.circular(18.0)),
                      //     border: Border.all(
                      //       width: 0.5,
                      //       color: const Color(0xFF423B55),
                      //     ),
                      //   ),
                      //   margin: const EdgeInsets.all(5.0),
                      // ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // Text(
                      //   '${diagnosaProvider.hasil!.data.hama.namaHama} (${diagnosaProvider.hasil!.data.hasilNilai}) %',
                      //   textAlign: TextAlign.center,
                      //   style: GoogleFonts.nunito(
                      //     fontSize: 16,
                      //     color: Colors.white,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                // button solusi penanganan
                // Padding(
                //   padding: const EdgeInsets.symmetric(
                //       horizontal: 70.0, vertical: 10.0),
                //   child: SizedBox(
                //     width: 105,
                //     height: 60,
                //     child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         primary: textgreen,
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(25.0),
                //         ),
                //       ),
                //       onPressed: () => showModalBottomSheet(
                //         context: context,
                //         builder: (context) => buildSheet(),
                //         // enableDrag: false,
                //         // isDismissible: false,
                //         isScrollControlled: true,
                //         backgroundColor: Colors.transparent,
                //       ),
                //       child: Text(
                //         'Solusi Penanganan',
                //         style: GoogleFonts.nunito(
                //             fontSize: 20, color: Colors.white),
                //       ),
                //     ),
                //   ),
                // ),
              ]),
        ),
      ),
    );
  }

  // pop up solusi penanganan
  // Widget buildSheet() => DraggableScrollableSheet(
  //       initialChildSize: 0.9,
  //       minChildSize: 0.5,
  //       maxChildSize: 0.9,
  //       builder: (_, controller) => ListView(
  //         controller: controller,
  //         children: [
  //           Container(
  //             decoration: BoxDecoration(
  //               color: bgwhite,
  //               borderRadius:
  //                   const BorderRadius.vertical(top: Radius.circular(30)),
  //             ),
  //             padding: const EdgeInsets.only(left: 20, right: 20),
  //             child: Column(
  //               children: [
  //                 const Icon(
  //                   Icons.minimize_outlined,
  //                   color: Colors.grey,
  //                 ),
  //                 Align(
  //                   alignment: Alignment.center,
  //                   child: Text(
  //                     'Solusi Pengendalian',
  //                     style: GoogleFonts.nunito(
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.w600,
  //                     ),
  //                   ),
  //                 ),
  //                 const Divider(
  //                   thickness: 1,
  //                   height: 25,
  //                 ),
  //                 Row(
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     Text(
  //                       diagnosaProvider.hasil!.data.hama.namaHama,
  //                       style: GoogleFonts.nunito(
  //                           fontSize: 18,
  //                           color: textgreen,
  //                           fontWeight: FontWeight.w600),
  //                     ),
  //                     const SizedBox(
  //                       width: 10,
  //                     ),
  //                     Text(
  //                       ("(${diagnosaProvider.hasil!.data.hasilNilai}) %"),
  //                       style: GoogleFonts.nunito(
  //                           fontSize: 18,
  //                           color: textgreen,
  //                           fontWeight: FontWeight.w600),
  //                     ),
  //                   ],
  //                 ),
  //                 const SizedBox(
  //                   height: 20,
  //                 ),
  //                 SizedBox(
  //                   height: 600,
  //                   child: ListView.builder(
  //                     controller: controller,
  //                     // shrinkWrap: true,
  //                     itemCount: diagnosaProvider.hasil!.solusi.length,
  //                     itemBuilder: (context, index) {
  //                       final listSolusi =
  //                           diagnosaProvider.hasil!.solusi[index];
  //                       return Row(
  //                         children: [
  //                           // SizedBox(
  //                           //   width: 10,
  //                           // ),
  //                           Expanded(
  //                             child: Padding(
  //                               padding: const EdgeInsets.only(bottom: 10.0),
  //                               child: Text(
  //                                 '- ${listSolusi.solusi}',
  //                                 style: GoogleFonts.nunito(fontSize: 16),
  //                               ),
  //                             ),
  //                           ),
  //                         ],
  //                       );
  //                     },
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     );
}
