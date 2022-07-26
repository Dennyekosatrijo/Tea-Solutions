import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/template/custome_template.dart';

class PDiagnosaPage extends StatelessWidget {
  const PDiagnosaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: bgwhite,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/diagnosa_beranda.png',
                    width: 80,
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Diagnosis',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          ' Hama Tanaman Teh',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 20),
                  //   child: Expanded(
                  //     child: Text(
                  //       'Diagnosis Hama Tanaman Teh',
                  //       style: GoogleFonts.nunito(
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.black,
                  //       ),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Fitur diagnosis adalah fitur utama dalam Tea Solutions yang berisi gejala - gejala yang sering muncul dalam tanaman teh. Pengguna diharuskan untuk memilih gejala yang dimana tanaman teh tersebut sedang terserang dan juga pengguna harus mengisikan nilai bobot untuk menentukan keyakinan pengguna terhadap gejala yang dipilih. Setelah proses pemilihan gejala dan pemberian nilai keyakinan, maka sistem akan menampilkan hasil diagnosisnya berupa tanaman teh pengguna sedang terserang oleh hama apa beserta solusi penanganannya.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
