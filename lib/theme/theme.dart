import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      scaffoldBackgroundColor: Colors.white70,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.green,
      ),
      buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme.light(
          onPrimary: Colors.purple,
          onSecondary: _lightColor.blueAngel,
        ),
      ),
      colorScheme: const ColorScheme.light(),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(Colors.green),
      ),
      textTheme: ThemeData.light().textTheme.copyWith(
            titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: _lightColor._textColor,
            ),
          ),
    );
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 27, 25, 25);
  final Color blueAngel = const Color.fromARGB(13, 12, 1, 217);
}
