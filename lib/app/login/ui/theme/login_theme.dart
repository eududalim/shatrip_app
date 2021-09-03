import 'package:flutter/material.dart';

class LoginTheme {
  static TextStyle get loginTitle1 => TextStyle(
        fontSize: 35.0,
        color: Colors.white,
        height: 1.5,
        fontFamily: 'Sansita One',
        shadows: [
          Shadow(blurRadius: 7, color: Colors.black38, offset: Offset(3, 3))
        ],
      );

  static TextStyle get loginTextBody1 => TextStyle(
        fontSize: 13,
        // fontWeight: FontWeight.w100,
        color: Colors.white,
        shadows: [
          Shadow(blurRadius: 7, color: Colors.black38, offset: Offset(3, 3))
        ],
      );

  static ButtonStyle buttonStyle1(context) => ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      )),
      foregroundColor:
          MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
      overlayColor: MaterialStateProperty.all<Color>(
          Theme.of(context).accentColor.withAlpha(100)));

  static ButtonStyle buttonStyle2(context) => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Theme.of(context).primaryColor,
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        )),
      );
}
