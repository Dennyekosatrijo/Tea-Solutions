import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/template/custome_template.dart';

class PHamaPage extends StatelessWidget {
  const PHamaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: bgwhite,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    'assets/images/pest.png',
                    width: 60,
                    height: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Jenis - Jenis',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Hama Tanaman Teh',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
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
              'Fitur jenis - jenis hama adalah sebuah fitur yang berfungsi sebagai pengetahuan untuk pengguna yang dimana mungkin ada pengguna yang masih belum mengetahui tentang hama pada tanaman teh. Pada tampilan awal fitur ini berisi daftar hama pada tanaman teh, pengguna harus menekan hama yang akan dilihat untuk memunculkan gejala - gejala yang biasa terjadi pada hama tersebut beserta solusi penanganan dari hama tersebut.',
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
    );
  }
}
