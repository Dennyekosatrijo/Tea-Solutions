import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/tampilan_awal/beranda.dart';
import 'package:tea_solutions/template/custome_template.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgwhite,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'TEA SOLUTIONS',
            style: GoogleFonts.nunitoSans(
                fontSize: 40, fontWeight: FontWeight.w300, color: Colors.black),
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/newlogo.png',
                width: 200,
                height: 200,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                padding: const EdgeInsets.all(10.0),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), color: bggreen2),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(children: [
                        Text(
                          'Diagnosis Hama Tanaman Teh',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Expanded(
                            child: Text(
                                'Sebuah aplikasi yang berfungsi untuk membantu anda mendiagnosis hama pada tanaman teh beserta cara penanganannya',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: bggreen2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Beranda()));
                    },
                    child: Text(
                      "MULAI",
                      style: GoogleFonts.nunito(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
