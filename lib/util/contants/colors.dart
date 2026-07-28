import 'package:flutter/material.dart';

class EColors{
  EColors._();

  //app basic color
  static const Color primary = Color(0xff4b68ff);
  static const Color secondary = Color(0xffffe25b);
  static const Color accent = Color(0xffb0c7ff);

  //Gradient Color
  static const Gradient linearGradient = LinearGradient(
   begin: Alignment(0.0,0.0),
   end: Alignment(0.707,-0.707),
  colors: [
    Color(0xffff9a9a),
    Color(0xfffad0c4),
    Color(0xfffad0c4)
  ],
  );

  //text Colors
  static const Color textPrimary = Color(0xff333333);
  static const Color textSecondary = Color(0xff6c757d);
  static const Color textWhite = Color(0xffffffff);

  // background colors
  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xfff3f5ff);

  //background Container color
  static const Color lightContainer = Color(0xfff6f6f6);
  static Color darkContainer = Colors.white.withValues(alpha: 0.1);

  //button colors
  static const Color buttonPrimary = Color(0xff4b68ff);
  static const Color buttonSecondary = Color(0xff6c757d);
  static const Color buttonDisabled = Color(0xffc4c4c4);

  //Error and Validation Colors
  static const Color error = Color(0xfff44336);
  static const Color success = Color(0xff4caf50);
  static const Color warning = Color(0xffff9800);
  static const Color info = Color(0xff2196f3);

  //Neutral Shades
  static const Color black = Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);
  static const Color grey = Color(0xffe0e0e0);
  static const Color softGrey = Color(0xfff4f4f4);
  static const Color white = Color(0xffffffff);


}