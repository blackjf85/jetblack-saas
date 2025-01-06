import 'package:flutter/material.dart';

class AppTheme {
  // Primary colors
  static const Color primaryPurple = Color(0xFF9575CD); // Light Purple 300
  static const Color secondaryTeal = Color(0xFF009688); // Teal 500

  // Background colors
  static const Color darkBackground = Color(0xFF121212); // Dark surface
  static const Color lightBackground = Color(0xFFFAFAFA); // Light surface

  // Text colors
  static const Color darkText = Color(0xFFFFFFFF); // White
  static const Color lightText = Color(0xFF000000); // Black
  static const Color darkTextSecondary = Color(0xB3FFFFFF); // White 70%
  static const Color lightTextSecondary = Color(0xDD000000); // Black 87%

  static ThemeData get darkTheme => ThemeData(
        colorScheme: ColorScheme.dark(
          primary: primaryPurple,
          secondary: secondaryTeal,
          surface: darkBackground,
          onSurface: darkText,
          onPrimary: darkText,
          onSecondary: darkText,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: darkBackground,
          foregroundColor: primaryPurple,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primaryPurple,
        ),
        iconTheme: const IconThemeData(
          color: primaryPurple,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: darkText),
          bodyMedium: TextStyle(color: darkTextSecondary),
        ),
      );

  static ThemeData get lightTheme => ThemeData(
        colorScheme: ColorScheme.light(
          primary: primaryPurple,
          secondary: secondaryTeal,
          surface: lightBackground,
          onSurface: lightText,
          onPrimary: lightText,
          onSecondary: lightText,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: lightBackground,
          foregroundColor: primaryPurple,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primaryPurple,
        ),
        iconTheme: const IconThemeData(
          color: primaryPurple,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: lightText),
          bodyMedium: TextStyle(color: lightTextSecondary),
        ),
      );
}
