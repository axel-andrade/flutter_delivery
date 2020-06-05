import 'package:flutter/material.dart';
import 'package:masflu/utils.dart';

const brightness = Brightness.dark;
const primaryColor = Colors.purple;
const secondaryColor = Colors.white;
const lightColor = const Color(0xFFFFFFFFF);
final backgroundColor = HexColor('#121212');
final backgroundColor2 = HexColor('#1F1B24');
const dangerColor = Colors.red;

ThemeData darkPurpleTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      button: new TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
      display1: new TextStyle(
        fontSize: 24.0,
        color: primaryColor,
        fontWeight: FontWeight.bold,
      ),
      display2: new TextStyle(
        fontSize: 24.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      display3: new TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      display4: new TextStyle(
        fontSize: 14,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      body1: new TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
      subhead: new TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.white
      ),
      subtitle: new TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 20,
          letterSpacing: 0.27,
          color: Colors.white,
      ),
    ),
    primaryColor: primaryColor,
    accentColor: secondaryColor,
    canvasColor: backgroundColor2,
    backgroundColor: backgroundColor,
    appBarTheme: AppBarTheme(
      color: backgroundColor2,
    ),
    fontFamily: 'Raleway'
  );
}
