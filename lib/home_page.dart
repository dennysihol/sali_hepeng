import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sali_hepeng/login_page.dart';
import 'package:sali_hepeng/theme/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pinjam Duit',
      theme: myTheme,
      home: AnimatedSplashScreen(
        animationDuration: Duration(seconds: 1),
        duration: 3000,
        splash: 'assets/images/background.png',
        splashIconSize: double.infinity,
        nextScreen: LoginPage(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        backgroundColor: const Color.fromARGB(255, 0, 135, 255),
      ),
    );
  }
}
