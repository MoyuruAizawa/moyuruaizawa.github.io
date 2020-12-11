import 'package:flutter/material.dart';

ThemeData get appTheme {
  return ThemeData.light().copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: ThemeData.light().textTheme.copyWith(
            headline1: TextStyle(
              fontSize: 24,
              fontFamily: "AppFontFamily",
              color: Colors.black,
              fontWeight: FontWeight.w200,
            ),
            bodyText1: TextStyle(
              fontSize: 16,
              // fontFamily: "AppFontFamily",
              color: Colors.black,
              fontWeight: FontWeight.w200,
            ),
        bodyText2: TextStyle(
          fontSize: 14,
          // fontFamily: "AppFontFamily",
          color: Colors.black,
          fontWeight: FontWeight.w200,
        ),
          ));
}
