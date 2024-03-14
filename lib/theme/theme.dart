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
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: const Color.fromARGB(255, 0, 96, 181),
      inactiveTrackColor: const Color.fromARGB(255, 0, 123, 232),
      trackShape: RectangularSliderTrackShape(),
      trackHeight: 6.0,
      thumbColor: Color.fromARGB(255, 77, 198, 61),
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
      overlayColor: const Color.fromARGB(255, 231, 226, 226),
      overlayShape: RoundSliderOverlayShape(overlayRadius: 15.0),
    ));
