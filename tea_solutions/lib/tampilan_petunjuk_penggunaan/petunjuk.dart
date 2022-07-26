import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/tampilan_awal/beranda.dart';
import 'package:tea_solutions/tampilan_petunjuk_penggunaan/phama.dart';
import 'package:tea_solutions/tampilan_petunjuk_penggunaan/pinfoteh.dart';
import 'package:tea_solutions/template/custome_template.dart';
import 'package:tea_solutions/tampilan_petunjuk_penggunaan/pdiagnosa.dart';

class Petunjuk extends StatefulWidget {
  const Petunjuk({Key? key}) : super(key: key);

  @override
  State<Petunjuk> createState() => _PetunjukState();
}

class _PetunjukState extends State<Petunjuk> {
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
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return const Beranda();
              }),
            )
          },
        ),
        title: const Text(
          'Cara Menggunakan Aplikasi',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: bggreen2,
        centerTitle: true,
      ),
      backgroundColor: bggreen2,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: bgwhite,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: bgwhite),
                      labelColor: Colors.black,
                      labelStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14),
                      unselectedLabelColor: Colors.grey,
                      unselectedLabelStyle: const TextStyle(fontSize: 14),
                      tabs: const [
                        Tab(
                          child: Text(
                            'Proses Diagnosis Hama Teh',
                            textAlign: TextAlign.center,
                          ),
                          height: 60,
                        ),
                        Tab(
                          child: Text(
                            'Jenis - Jenis Hama Teh',
                            textAlign: TextAlign.center,
                          ),
                          height: 60,
                        ),
                        Tab(
                          child: Text(
                            'Pelajari Tentang Tanaman Teh',
                            textAlign: TextAlign.center,
                          ),
                          height: 60,
                        ),
                      ]),
                  const SizedBox(height: 20),
                  Container(
                    height: 400,
                    width: double.infinity,
                    child: const TabBarView(
                      children: [
                        PDiagnosaPage(),
                        PHamaPage(),
                        PInfoPage(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
