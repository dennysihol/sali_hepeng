import 'package:flutter/material.dart';
import 'package:sali_hepeng/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      child: Text(
        'Daftar / Masuk',
        style: GoogleFonts.lato(
          color: const Color.fromRGBO(67, 139, 232, 1),
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
