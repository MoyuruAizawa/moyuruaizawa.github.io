import 'package:flutter/material.dart';

ThemeData get appTheme {
  return ThemeData.light().copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: ThemeData.light().textTheme.copyWith(
            headline1: TextStyle(
              fontSize: 24,
              fontFamily: "AppFontFamily",
              color: Colors.black87,
              fontWeight: FontWeight.w400,
            ),
            bodyText1: TextStyle(
              fontSize: 18,
              fontFamily: "AppFontFamily",
              color: Colors.black87,
              fontWeight: FontWeight.w400,
            ),
        bodyText2: TextStyle(
          fontSize: 16,
          fontFamily: "AppFontFamily",
          color: Colors.black87,
          fontWeight: FontWeight.w400,
        ),
          ));
}
