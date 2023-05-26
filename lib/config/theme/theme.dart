//setup my theme in here

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  textTheme: TextTheme(
    headlineMedium: TextStyle(
      color: Colors.black
    )
  ),
    fontFamily: GoogleFonts
        .roboto()
        .fontFamily,
    colorScheme: const ColorScheme.light(
        background: Colors.red,
        brightness: Brightness.light,
        onSurface: Colors.amber,
        surface: Colors.green
    ),
    useMaterial3: true);

ThemeData darkTheme = ThemeData(
    fontFamily: GoogleFonts
        .roboto()
        .fontFamily,
    colorScheme: const ColorScheme.dark(
      background: Colors.black12,),
    useMaterial3: true);
