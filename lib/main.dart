import 'package:flutter/material.dart';
import 'package:sali_hepeng/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sali_hepeng/pinjamduit_page.dart';
// import 'package:sali_hepeng/verifikasi_page.dart';


void main() => runApp(PinjamDuitApp());

class PinjamDuitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme( // Set DM Sans font
          Theme.of(context).textTheme,
        ),
      ),
      home: HomePage(),
    );
  }
}