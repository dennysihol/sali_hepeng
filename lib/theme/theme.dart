import 'package:flutter/material.dart';

final myTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: 'DMSans',
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.black,
      ),
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        fontFamily: 'DMSans',
        fontSize: 14,
      ),
    ),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 60.0,
    ));


