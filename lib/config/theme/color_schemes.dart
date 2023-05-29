import 'package:flutter/material.dart';


/**
 * example:
 * Tertiary: card low elevation, card header, floating action button
 * secondaryContainer: Card sub, button secondary, chip secondary
 * primaryContainer: Card primary low elevation
 * on+<name>: color on <name>
 */

var colorScheme = (BuildContext context) => Theme.of(context).colorScheme;

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF5E52A7),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFE5DEFF),
  onPrimaryContainer: Color(0xFF190261),
  secondary: Color(0xFF5F5C71),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFE5DFF9),
  onSecondaryContainer: Color(0xFF1C192B),
  tertiary: Color(0xFF6650A4),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFE8DDFF),
  onTertiaryContainer: Color(0xFF21005D),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF),
  onBackground: Color(0xFF1C1B1F),
  surface: Color(0xFFFFFBFF),
  onSurface: Color(0xFF1C1B1F),
  surfaceVariant: Color(0xFFE5E0EC),
  onSurfaceVariant: Color(0xFF48454F),
  outline: Color(0xFF78767F),
  onInverseSurface: Color(0xFFF4EFF4),
  inverseSurface: Color(0xFF313033),
  inversePrimary: Color(0xFFC8BFFF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF5E52A7),
  outlineVariant: Color(0xFFC9C5D0),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFC8BFFF),
  onPrimary: Color(0xFF2F2176),
  primaryContainer: Color(0xFF463A8D),
  onPrimaryContainer: Color(0xFFE5DEFF),
  secondary: Color(0xFFC9C3DC),
  onSecondary: Color(0xFF312E41),
  secondaryContainer: Color(0xFF474459),
  onSecondaryContainer: Color(0xFFE5DFF9),
  tertiary: Color(0xFFCEBDFF),
  onTertiary: Color(0xFF371E73),
  tertiaryContainer: Color(0xFF4E378B),
  onTertiaryContainer: Color(0xFFE8DDFF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF1C1B1F),
  onBackground: Color(0xFFE5E1E6),
  surface: Color(0xFF1C1B1F),
  onSurface: Color(0xFFE5E1E6),
  surfaceVariant: Color(0xFF48454F),
  onSurfaceVariant: Color(0xFFC9C5D0),
  outline: Color(0xFF928F99),
  onInverseSurface: Color(0xFF1C1B1F),
  inverseSurface: Color(0xFFE5E1E6),
  inversePrimary: Color(0xFF5E52A7),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFC8BFFF),
  outlineVariant: Color(0xFF48454F),
  scrim: Color(0xFF000000),
);
