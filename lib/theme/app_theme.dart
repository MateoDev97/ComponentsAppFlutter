import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primaryColor,

      //AppBar Theme

      appBarTheme: const AppBarTheme(color: primaryColor, elevation: 0),

      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColor)),

      //FloatingActionButton Theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 7, backgroundColor: primaryColor),

      //ElevatedButton Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              shape: const StadiumBorder(),
              elevation: 5)));
}
