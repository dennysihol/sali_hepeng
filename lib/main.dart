import 'package:flutter/material.dart';
import 'package:sali_hepeng/home_page.dart';
import 'package:sali_hepeng/theme/theme.dart';
// import 'package:sali_hepeng/pinjamduit_page.dart';
// import 'package:sali_hepeng/verifikasi_page.dart';

void main() => runApp(PinjamDuitApp());

class PinjamDuitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: HomePage(),
    );
  }
}
