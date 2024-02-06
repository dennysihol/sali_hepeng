import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:sali_hepeng/login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(67, 139, 232, 1),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(
                        child: FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: Container(
                            margin: const EdgeInsets.only(top: 50),
                            child: Center(
                              child: Image.asset(
                                'assets/images/logo.png',
                                //color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 300,
                      ),
                      FadeInUp(
                          duration: const Duration(milliseconds: 1900),
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(colors: [
                                  Color.fromRGBO(255, 255, 255, 1),
                                  Color.fromRGBO(216, 221, 223, 1),
                                ])),
                            child: const Center(
                                child: Login(),
                                ),
                          )),
                      const SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
