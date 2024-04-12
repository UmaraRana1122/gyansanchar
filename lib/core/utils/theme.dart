import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gyansanchar/presentation/resources/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    dialogBackgroundColor: Vx.white,
    useMaterial3: false,
    primarySwatch: Vx.getMaterialColor(hEBB12B),
    colorScheme:
        ColorScheme.fromSwatch(primarySwatch: Vx.getMaterialColor(hEBB12B)),
    fontFamily: GoogleFonts.roboto().fontFamily,
    scaffoldBackgroundColor: Vx.white,
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      elevation: 0,
      foregroundColor: h364356,
      shadowColor: Vx.white,
      backgroundColor: Vx.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: hEBB12B,
        foregroundColor: Vx.white,
        fixedSize: const Size.fromHeight(50),
        textStyle: TextStyle(
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Vx.white,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: hF0A854,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: hF0A854,
          width: 1,
        ),
      ),
    ),
  );
}
