import 'package:flutter/material.dart';

class AppTheme {
  static const Color _colorLight = Color.fromRGBO(217, 223, 253, 1);

  static const Color _color = Color.fromRGBO(94, 119, 251, 1);

  static ThemeData get basic {
    return ThemeData(
      canvasColor: const Color.fromRGBO(249, 250, 254, 1),
      primarySwatch: Colors.indigo,
      primaryColor: _color,
      primaryColorLight: _colorLight,
      dividerColor: _colorLight,
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          isDense: true,
          errorStyle: const TextStyle(height: 0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: _color),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.redAccent),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: _color),
          )),
    );
  }
}
