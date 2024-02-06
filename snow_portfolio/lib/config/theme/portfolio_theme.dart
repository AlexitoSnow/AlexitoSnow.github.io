import 'package:flutter/material.dart';

class PortfolioTheme {
  final bool useDarkMode;

  PortfolioTheme({this.useDarkMode = false});

  ThemeData get themeData {
    return ThemeData(
      colorSchemeSeed: mainColor,
      brightness: useDarkMode ? Brightness.dark : Brightness.light,
    );
  }
}

const mainColor = Colors.cyan;
