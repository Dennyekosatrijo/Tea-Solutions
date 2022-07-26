import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/template/custome_template.dart';

class JenisPage extends StatelessWidget {
  const JenisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _controllerOne = ScrollController();

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
                    'Mengenal Tentang',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text('Jenis Tanaman Teh',
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
                'Teh (Camellia sinensis) mempunyai dua jenis, yaitu: Camellia sinensis var. sinensis dan Camellia sinensis var. assamica. Camellia sinensis var. sinensis mempunyai ciri – ciri daunnya kecil berwarna hijau tua, jarak cabang dari permukaan tanah sangat dekat, serta tahan dengan cuaca dingin yang banyak digunakan untuk bahan baku produksi teh hijau. Sedangkan Camellia sinensis var. assamica mempunyai ciri – ciri daunnya lebar berwarna hijau mengkilat, jarak cabang dari permukaan tanah agak jauh, serta tidak tahan dengan cuaca dingin yang banyak digunakan untuk bahan baku produksi teh hitam (Dono dkk., 2013)',
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
