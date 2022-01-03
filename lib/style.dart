import 'package:flutter/material.dart';

const Color darkThemeBackgroundColor = Color(0xff1B1930);
const Color darkThemeAppbarColor = Color(0x0fffffff);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
);

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    surface: darkThemeAppbarColor,
    onSurface: Colors.white,
    primary: darkThemeBackgroundColor,
    primaryVariant: darkThemeBackgroundColor,
    secondary: darkThemeBackgroundColor,
    secondaryVariant: darkThemeBackgroundColor,
    background: darkThemeBackgroundColor,
    error: darkThemeBackgroundColor,
    onPrimary: darkThemeBackgroundColor,
    onSecondary: darkThemeBackgroundColor,
    onBackground: darkThemeBackgroundColor,
    onError: darkThemeBackgroundColor,
  ),
);
