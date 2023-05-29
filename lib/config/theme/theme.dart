//setup my theme in here

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//add 0xff{your hex} -> 100%
ThemeData lightTheme = ThemeData(
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      color: Colors.black
    )
  ),
    fontFamily: GoogleFonts
        .roboto()
        .fontFamily,
    colorScheme: const ColorScheme.light(
        background: Color(0xff5b5296),
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
      onSurface: Colors.deepOrangeAccent,
      background: Colors.black12,),
    useMaterial3: true);
