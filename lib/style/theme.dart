import 'package:flutter/material.dart';

const primaryRed = Color(0xFF9E001F);
const primaryNeutral1 = Color(0xFF57595A);
const iconBorderColor = Color(0xFFE8ECF4);
const primaryNeutral = Color(0xFF1E232C);
const primaryBlack = Color(0xFF1E1E1E);
const white = Color(0xFFFFFFFF);
const inputBackgroundColor = Color(0xFFCCCFD4);
const textHintColor = Color(0xFF8391A1);

// ===== Color scheme =====
const _colorScheme = ColorScheme(
  primary: white,
  primaryContainer: primaryNeutral,
  secondary: Color(0xff395772),
  surface: primaryBlack,
  onSurface: textHintColor,
  error: primaryRed,
  onPrimary: white,
  onSecondary: Color(0xFF8E9196),
  onError: primaryRed,
  shadow: Color(0x7FE2E5E7),
  brightness: Brightness.light,
  outline: Colors.white,
);

final textTheme = const TextTheme(
  labelLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: white,
  ),
  displayLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 95,
    color: white,
  ),
  displayMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 59,
    color: white,
  ),
  displaySmall: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 48,
    color: white,
  ),
  headlineMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 32,
    color: white,
  ),
  headlineSmall: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 26,
    color: white,
  ),
  titleLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 21,
    color: white,
  ),
  titleMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: white,
  ),
  titleSmall: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: white,
  ),
  bodyLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: white,
  ),
  bodyMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 14,
    color: white,
  ),
  bodySmall: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 12,
    color: white,
  ),
  labelSmall: TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: white,
  ),
);
// ===== Input decoration =====

final UnderlineInputBorder Function({required Color color})
_underlineInputBorderBuilder = ({required color}) => UnderlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide: BorderSide(
    width: 2,
    color: color,
    style: BorderStyle.none,
  ),
);

final _inputDecorationTheme = InputDecorationTheme(
  contentPadding: const EdgeInsets.all(16),
  labelStyle: textTheme.bodySmall!.copyWith(color: primaryNeutral),
  border: _underlineInputBorderBuilder(color: Colors.transparent),
  focusedBorder: _underlineInputBorderBuilder(color: Colors.transparent),
  enabledBorder: _underlineInputBorderBuilder(color: Colors.transparent),
  focusedErrorBorder: _underlineInputBorderBuilder(color: primaryRed),
  errorBorder: _underlineInputBorderBuilder(color: primaryRed),
  errorStyle: textTheme.bodySmall!.copyWith(color: primaryRed),
);
// ===== ThemeData =====
ThemeData lightThemeData() => ThemeData(
  scaffoldBackgroundColor: white,
  colorScheme: _colorScheme,
  textTheme: textTheme,
  inputDecorationTheme: _inputDecorationTheme,
);
