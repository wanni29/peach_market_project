import 'package:flutter/material.dart';
import 'package:project_peach_market_app/constants.dart';

ThemeData MyTheme() {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(color: Colors.black),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: kButtonPeachColor),
    ),
  );
}
