import 'package:flutter/material.dart';

class DuckColors {
  DuckColors._();

  static const white = Colors.white;
  static const azulH = Color(0xff0F2F57);
  static const haklesa = Color(0xff483D56);
  static const hak = Color(0xff686C96);
  static const info = Color(0xFF17a2b8);
  static const success = Color(0xff0dc919);
  static const backgroudpinInputField = Color(0xffE5E5E5);
  static const error = Color(0xFFdc3545);
  static const laranjaH = Color(0xffE63323);
  static const haklesc = Color(0xffFCDFDB);
  static const primaryVariant = Color(0xff6B6F98);
  static const primaryVariantDisabled = Color(0xff6F829A);
  static const secondary = Color(0xffE63323);

  static const Gradient primaryGradient = LinearGradient(
    colors: [
      Color(0xff4186DC),
      Color(0xffFF8C7D),
      Color(0xffFF594A),
    ],
  );
  static const Gradient backgroundGradient = LinearGradient(
    colors: [
      Color(0xff4186DC),
      Color(0xff4186DC),
      Color(0xffFF594A),
    ],
    begin: Alignment.bottomLeft,
  );

  static const int _primaryValue = 0xFF0F2F57;
  static const MaterialColor primary = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFF318AF8),
      200: Color(0xFF226CC7),
      300: Color(0xFF1D5EAD),
      400: Color(0xFF1A4D8D),
      500: Color(_primaryValue),
      600: Color(0xFF0C2747),
      700: Color(0xFF174987),
      800: Color(0xFF022C63),
      900: Color(0xFF041F42),
    },
  );
}
