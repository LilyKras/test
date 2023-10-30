import 'package:flutter/material.dart';
import 'package:test_form/core/domain/models/theme/theme_extensions.dart';

ThemeData createLightTheme() {
  return ThemeData(
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.black, fontSize: 14),
      bodySmall: TextStyle(color: Color(0xFF677482), fontSize: 14),
      titleMedium: TextStyle(color: Colors.black, fontSize: 16),
      titleSmall: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
    ),
    dividerTheme: const DividerThemeData(color: Color(0xFFE7ECF0), thickness: 1),
    iconTheme: const IconThemeData(color: Color(0xFF677482)),
    brightness: Brightness.light,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.light,
      ThemeGradients.light,
    ],
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Color(0xFFFBFBFB),
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      disabledBackgroundColor: const Color(0xFF919EAB),
      disabledForegroundColor: const Color(0xFFE7ECF0),
      backgroundColor: const Color(0xFFEA560D),
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    )), 
  );
}
