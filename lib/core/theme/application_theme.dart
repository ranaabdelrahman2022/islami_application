import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        color: Colors.transparent,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.black,
        )),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.black,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w500,
        fontSize: 25,
        color: Colors.black,
      ),
      bodySmall: GoogleFonts.cinzelDecorative(
        fontWeight: FontWeight.normal,
        fontSize: 20,
        color: Colors.black,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.transparent,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          )));
}
