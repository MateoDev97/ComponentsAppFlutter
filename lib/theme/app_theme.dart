import 'package:flutter/material.dart';

class AppTheme {
  static const MaterialColor primaryColor = Colors.orange;

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
        elevation: 5,
      ),
    ),

    //Input Decoration Theme
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primaryColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        errorStyle: TextStyle(color: Colors.red)),
  );
}
