import 'package:flutter/material.dart';
import 'package:sport_depot/utils/theme/custom_themes/text_theme.dart';
import 'package:sport_depot/utils/theme/custom_themes/elevated_button_theme.dart';

class SAppTheme {
  SAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.orange,
    scaffoldBackgroundColor: Colors.white,
    textTheme: STextTheme.lightTextTheme,
    elevatedButtonTheme: SElevatedButtonThemeData.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.orange,
    scaffoldBackgroundColor: Colors.black,
    textTheme: STextTheme.darkTextTheme,
    elevatedButtonTheme: SElevatedButtonThemeData.darkElevatedButtonTheme,
  );
}
