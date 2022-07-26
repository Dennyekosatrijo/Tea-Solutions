import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/template/custome_template.dart';

class ManfaatPage extends StatelessWidget {
  const ManfaatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: bggreen,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Manfaat',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text('Tanaman Teh',
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.white,
                height: 35,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Manfaat utama tanaman teh dapat dilihat dari banyaknya minuman - minuman sehat yang berbahan dasar teh, hal tersebut bukan hanya sebagai bahan tambahan saja melainkan kandungan di dalamnya berisi senyawa kimia yang bisa memberi kesan warna, rasa dan aroma yang bisa memuaskan hingga meredakan apa yang dirasakan peminumnya. Selain sebagai bahan minuman teh juga banyak dimanfaatkan untuk bahan kosmetika. (Diah Indarti, 2015)',
                textAlign: TextAlign.justify,
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: Colors.white,
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
