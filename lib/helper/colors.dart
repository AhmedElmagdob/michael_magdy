import 'package:flutter/material.dart';
extension colors on ColorScheme{
  static MaterialColor primary_app =  MaterialColor(
    0xb791f189,
    const <int, Color>{
      50: blue,
      100: blue,
      200: blue,
      300: blue,
      400: blue,
      500: blue,
      600: blue,
      700: blue,
      800: blue,
      900: blue,
    },
  );
  static MaterialColor primary_app_white =  MaterialColor(
    0xb791f189,
    const <int, Color>{
      50: white,
      100: white,
      200: white,
      300: white,
      400: white,
      500: white,
      600: white,
      700: white,
      800: white,
      900: white,
    },
  );
  static const Color blue = Color(0xff497FCE);
  static const Color lightBlue = Color(0xc878a2dc);
  static const Color orange = Color(0xffFEB135);
  static const Color searchBar = Color(0xffe8e8e8);
  static const Color white = Color(0xffffffff);
}