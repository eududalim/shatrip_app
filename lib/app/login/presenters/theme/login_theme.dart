import 'package:flutter/material.dart';

class LoginTheme {
  static TextStyle get loginTitle1 => TextStyle(
        fontSize: 35.0,
        color: Colors.white,
        height: 1.5,
        fontFamily: 'Sansita One',
      );

  static TextStyle get loginTextBody1 => TextStyle(
        fontSize: 13,
        // fontWeight: FontWeight.w100,
        color: Colors.white,
        shadows: [
          Shadow(blurRadius: 0.5)
        ],
      );
}
