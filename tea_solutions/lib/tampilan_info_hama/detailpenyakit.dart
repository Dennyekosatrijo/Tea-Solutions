import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/models/listdetail.dart';
import 'package:tea_solutions/models/listhama.dart';
import 'package:tea_solutions/service/apiteh.dart';
import 'package:tea_solutions/service/apiurl.dart';
import 'package:tea_solutions/tampilan_info_hama/infohama.dart';
import 'dart:async';

import 'package:tea_solutions/template/custome_template.dart';

class DetailHamaPage extends StatefulWidget {
  final Datum hama;
  DetailHamaPage({Key? key, required this.hama}) : super(key: key);

  @override
  State<DetailHamaPage> createState() => _DetailHamaPageState();
}

class _DetailHamaPageState extends State<DetailHamaPage> {
  final ApiTeh api = ApiTeh();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgwhite,
      appBar: AppBar(
        leading: InkWell(
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
          onTap: () => {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return InfoHama();
              }),
            )
          },
        ),
        title: Text(
          'Detail ${widget.hama.namaHama}',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: bggreen,
        elevation: 0,
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const InfoHama();
          }));
          return false;
        },
        child: FutureBuilder<DetailHama>(
            future: api.getHamaById(widget.hama.kodeHama),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final detail = snapshot.data!;

                final gejala = detail.basisPengetahuan;
                final solusi = detail.solusi;

                return ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                '$fotourl/assets/images/teh/${widget.hama.gambar}'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(18.0)),
                          // border: Border.all(
                          //   width: 0.5,
                          //   color: const Color(0xFF423B55),
                          // ),
                        ),
                        margin: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 10.0),
                      ),
                    ),
                    Text(
                      widget.hama.namaHama,
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 25,
                        thickness: 0.5,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      padding: const EdgeInsets.all(10.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: bggreen2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Gejala :',
                              style: GoogleFonts.nunito(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: gejala.length,
                            itemBuilder: (context, index) {
                              final gejalahama = gejala[index];
                              return Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: Expanded(
                                        child: Text(
                                          '- ${gejalahama.namaGejala}',
                                          style: GoogleFonts.nunito(
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      padding: const EdgeInsets.all(10.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: bggreen2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Pengendalian :',
                              style: GoogleFonts.nunito(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: solusi.length,
                            itemBuilder: (context, index) {
                              final solusiHama = solusi[index];
                              return Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: Text(
                                        '- ${solusiHama.solusi}',
                                        style: GoogleFonts.nunito(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
      ),
    );
  }
}
