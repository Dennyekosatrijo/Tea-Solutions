import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tea_solutions/tampilan_awal/home.dart';
import 'package:tea_solutions/template/custome_template.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    splashscreen1();
  }

  splashscreen1() async {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bggreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/newlogo.png',
              width: 180,
              height: 180,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'TEA SOLUTIONS',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 34,
                      fontWeight: FontWeight.w300,
                      color: bgwhite),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
