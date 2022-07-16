import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.pink;
  static const Color secondary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // primary color
      primaryColor: primary,
      // Appbar
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      // Text Button
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      // Floating action button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 0,
      ),
      // ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: Colors.pink,
        shape: const StadiumBorder(),
        elevation: 0,
      )),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: Colors.black),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secondary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.indigo,
      // Appbar theme
      appBarTheme: const AppBarTheme(
        color: Colors.indigo,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.black);
}
