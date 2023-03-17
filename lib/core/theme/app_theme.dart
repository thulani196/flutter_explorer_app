import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: const Color.fromRGBO(253, 253, 253, 1.0),
        primaryColorLight: const Color.fromRGBO(255, 255, 255, 1),
        appBarTheme: const AppBarTheme(
            color: Color.fromRGBO(253, 253, 253, 1.0), elevation: 0),
        buttonTheme: ButtonThemeData(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            buttonColor: Colors.lightBlue[200]),
        textTheme: TextTheme(
            displayMedium: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 24,
                color: const Color.fromRGBO(33, 40, 50, 1)),
            displayLarge: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.normal,
                fontSize: 24,
                color: const Color.fromRGBO(33, 40, 50, 1)),
            displaySmall: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontSize: 18,
                color: const Color.fromRGBO(132, 132, 132, 1)),
            titleMedium: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontStyle: FontStyle.normal,
                fontSize: 12.82),
            titleSmall: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontStyle: FontStyle.normal,
                fontSize: 10.99),
            labelLarge: TextStyle(
                color: const Color.fromRGBO(239, 239, 230, 1),
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                fontSize: 36),
            labelMedium: TextStyle(
                color: const Color.fromRGBO(239, 239, 230, 1),
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 24),
            labelSmall: TextStyle(
                fontSize: 18,
                color: const Color.fromRGBO(94, 98, 130, 1),
                fontWeight: FontWeight.w700,
                fontFamily: GoogleFonts.poppins().fontFamily),
            bodySmall: TextStyle(
                fontSize: 14,
                color: const Color.fromRGBO(132, 132, 132, 1),
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal)),
        inputDecorationTheme: InputDecorationTheme(
            iconColor: const Color.fromRGBO(246, 246, 246, 1),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 1.0),
            hintStyle: TextStyle(
                color: const Color.fromRGBO(195, 195, 195, 1),
                fontStyle: FontStyle.normal,
                fontSize: 14.0,
                fontFamily: GoogleFonts.poppins().fontFamily)));
  }
}
