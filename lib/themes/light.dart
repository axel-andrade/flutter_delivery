import 'package:flutter/material.dart';
import 'package:masflu/utils.dart';

const brightness = Brightness.light;
const primaryColor = Colors.blue;
const secondaryColor = Colors.black;
const lightColor = const Color(0xFFFFFFFFF);
const backgroundColor = Colors.white;
const backgroundColor2 = Colors.white;
const dangerColor = Colors.red;

ThemeData lightTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      button: new TextStyle(
      color: Colors.black,
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
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      display3: new TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      display4: new TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      body1: new TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
      subhead: new TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black
      ),
      subtitle: new TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 20,
          letterSpacing: 0.27,
          color: Colors.black,
      ),
    ),
    primaryColor: primaryColor,
    accentColor: secondaryColor,
    canvasColor: Colors.white,
    backgroundColor: backgroundColor,
    appBarTheme: AppBarTheme(
      color: backgroundColor2,
    ),
    fontFamily: 'Raleway'
  );
}
