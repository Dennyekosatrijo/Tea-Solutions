import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/template/custome_template.dart';

class SejarahPage extends StatelessWidget {
  const SejarahPage({Key? key}) : super(key: key);

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
                    'Informasi Penting',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text('Tentang Tanaman Teh',
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
                'Teh (Camellia sinensis) merupakan salah satu tanaman penting dalam perekonomian Indonesia karena menyediakan lapangan kerja dan pendapatan bagi petani serta meningkatkan pendapatan devisa dan mendorong pengembangan wilayah (Fauziah dkk., 2018). Teh juga merupakan salah satu produk ekspor utama Indonesia, seperti minyak dan gas bumi, yang merupakan sumber devisa yang sangat penting (Badan Pusat Statistik, 2019)',
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
