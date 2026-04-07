import 'package:flutter/material.dart';

const primaryRed = Color(0xFF9E001F);
const primaryNeutral1 = Color(0xFF57595A);
const iconBorderColor = Color(0xFFE8ECF4);
const primaryNeutral = Color(0xFF1E232C);
const primaryBlack = Color(0xFF1E1E1E);
const white = Color(0xFFFFFFFF);
const inputBackgroundColor = Color(
  0xFFF7F8F9,
);
const textHintColor = Color(0xFF8391A1);

const brandYellow = Color(0xFFF9E29B);
const brandYellowDark = Color(0xFFD4A744);
const cardBackground = Color(0xFFF2F2F2);

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
  outline: primaryBlack,
);

final textTheme = const TextTheme(
  headlineMedium: TextStyle(
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
    fontSize: 30,
    color: primaryNeutral,
    height: 1.3,
  ),
  titleLarge: TextStyle(
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: primaryNeutral,
  ),
  titleMedium: TextStyle(
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: primaryBlack,
  ),
  labelLarge: TextStyle(
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: primaryBlack,
  ),
  bodyMedium: TextStyle(
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: primaryNeutral1,
    height: 1.5,
  ),
);

final UnderlineInputBorder Function({required Color color})
_underlineInputBorderBuilder = ({required color}) => UnderlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide: BorderSide(
    width: 2,
    color: color,
    style: BorderStyle.none,
  ),
);

// Button Theme
final _elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: primaryNeutral,
    foregroundColor: white,
    minimumSize: const Size(double.infinity, 56),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    textStyle: const TextStyle(
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
  ),
);

final _inputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: inputBackgroundColor,
  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: iconBorderColor),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: iconBorderColor),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: primaryNeutral, width: 1),
  ),
  hintStyle: const TextStyle(color: textHintColor, fontFamily: 'Urbanist'),
);

ThemeData lightThemeData() => ThemeData(
  useMaterial3: true,
  fontFamily: 'Urbanist',
  scaffoldBackgroundColor: white,
  colorScheme: const ColorScheme.light(
    primary: primaryNeutral,
    secondary: brandYellow,
    surface: white,
    error: primaryRed,
    onPrimary: white,
    onSurface: primaryNeutral,
  ),
  textTheme: textTheme,
  inputDecorationTheme: _inputDecorationTheme,
  elevatedButtonTheme: _elevatedButtonTheme,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: primaryNeutral,
    unselectedItemColor: textHintColor,
    backgroundColor: white,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  appBarTheme: const AppBarTheme(
    surfaceTintColor: white,
  ),
);
