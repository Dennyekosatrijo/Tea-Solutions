import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/tampilan_awal/artikelteh/jenisteh.dart';
import 'package:tea_solutions/tampilan_awal/artikelteh/manfaat.dart';
import 'package:tea_solutions/tampilan_awal/artikelteh/sejarah.dart';
import 'package:tea_solutions/tampilan_awal/beranda.dart';
import 'package:tea_solutions/tampilan_petunjuk_penggunaan/phama.dart';
import 'package:tea_solutions/tampilan_petunjuk_penggunaan/pinfoteh.dart';
import 'package:tea_solutions/template/custome_template.dart';
import 'package:tea_solutions/tampilan_petunjuk_penggunaan/pdiagnosa.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/teh1.jpg',
  'assets/images/teh2.jpg',
  'assets/images/teh3.jpg',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(item),
              fit: BoxFit.fill,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            border: Border.all(
              width: 0.5,
              color: const Color(0xFF423B55),
            ),
          ),
          margin: const EdgeInsets.all(5.0),
        ))
    .toList();

class Artikel extends StatefulWidget {
  const Artikel({Key? key}) : super(key: key);

  @override
  State<Artikel> createState() => _ArtikelState();
}

class _ArtikelState extends State<Artikel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

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
          'Tentang Tanaman Teh',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: bggreen,
        centerTitle: true,
      ),
      backgroundColor: bgwhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(children: [
                CarouselSlider(
                  items: imageSliders,
                  carouselController: _controller,
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayInterval: Duration(seconds: 3),
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: bggreen,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: textgreen),
                        labelColor: Colors.white,
                        labelStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                        unselectedLabelColor: Colors.grey,
                        unselectedLabelStyle: const TextStyle(fontSize: 14),
                        tabs: const [
                          Tab(
                            child: Text(
                              'Informasi Penting',
                              textAlign: TextAlign.center,
                            ),
                            height: 60,
                          ),
                          Tab(
                            child: Text(
                              'Jenis - Jenis Teh',
                              textAlign: TextAlign.center,
                            ),
                            height: 60,
                          ),
                          Tab(
                            child: Text(
                              'Manfaat Teh',
                              textAlign: TextAlign.center,
                            ),
                            height: 60,
                          ),
                        ]),
                    const SizedBox(height: 10),
                    Container(
                      height: 400,
                      width: double.infinity,
                      child: const TabBarView(
                        children: [
                          SejarahPage(),
                          JenisPage(),
                          ManfaatPage(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
