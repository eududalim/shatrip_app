import 'package:flutter/material.dart';

class HomeTheme {
  static TextStyle get homeTextSearch1 => TextStyle(
        fontSize: 16,
        // fontWeight: FontWeight.w100,
        color: Colors.white,
      );

  static InputDecoration inputDecoration1({String hintText, Icon icon, String labelText}) =>
      InputDecoration(
        labelText: labelText,
        prefixIcon: icon?? null,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white60,
          fontWeight: FontWeight.w400,
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
        )),
        contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white70,
          ),
        ),
      );
}
