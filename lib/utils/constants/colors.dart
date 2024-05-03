import 'package:flutter/material.dart';

class SColors {
  SColors._();

  // App Basic Colors
  static const Color primary = Color.fromARGB(255, 255, 185, 72);
  static const Color secondary = Color.fromARGB(255, 72, 130, 255);
  static const Color accent = Color.fromARGB(255, 137, 201, 253);

  // Gradient Colors

  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.8),
    end: Alignment(0.797, -8.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );

  // Text Colors
  static const Color textPrimary = Color.fromARGB(255, 47, 47, 47);
  static const Color textSecondary = Color.fromARGB(255, 108, 117, 125);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color.fromARGB(255, 246, 245, 245);
  static const Color dark = Color.fromARGB(255, 39, 39, 39);
  static const Color primaryBackground = Color.fromARGB(255, 243, 245, 255);

  // Background Container Colors
  static const Color lightContainer = Color.fromARGB(255, 246, 246, 246);
  static Color darkContainer = SColors.textWhite.withOpacity(0.1);

  // Button Colors
  static const Color buttonPrimary = Color.fromARGB(255, 255, 171, 75);
  static const Color buttonSecondary = Color.fromARGB(255, 107, 117, 112);
  static const Color buttonDisabled = Color.fromARGB(255, 196, 196, 196);

  // Border Colors
  static const Color borderPrimary = Color.fromARGB(255, 214, 214, 214);
  static const Color borderSecondary = Color.fromARGB(255, 226, 226, 226);

  // Error and Validation Colors
  static const Color error = Colors.red;
  static const Color success = Colors.green;
  static const Color warning = Color.fromARGB(255, 195, 99, 2);
  static const Color info = Color.fromARGB(255, 32, 23, 201);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFF9F9F9F);
  static const Color white = Color.fromARGB(255, 255, 255, 255);
  static const Color transparent = Colors.transparent;
}
