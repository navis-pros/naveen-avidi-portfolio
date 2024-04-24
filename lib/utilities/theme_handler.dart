import 'package:flutter/material.dart';

class ThemeHandler {
  static get lightTheme => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.blue,
          onPrimary: Colors.indigo,
          secondary: Colors.black,
          onSecondary: Colors.white70,
          error: Colors.red,
          onError: Colors.white70,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            color: Colors.black,
          ),
          bodySmall: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white70,
        ),
        switchTheme: SwitchThemeData(
          thumbColor: const MaterialStatePropertyAll(Colors.blueAccent),
          trackColor: MaterialStatePropertyAll(
            Colors.grey.shade300,
          ),
        ),
        listTileTheme: const ListTileThemeData(
          textColor: Colors.white,
          iconColor: Colors.white,
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          linearTrackColor: Colors.black45,
          circularTrackColor: Colors.black45,
          color: Colors.white70,
        ),
      );

  static get darkTheme => ThemeData(
        scaffoldBackgroundColor: Colors.black87,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.blue,
          onPrimary: Colors.indigo,
          secondary: Colors.black,
          onSecondary: Colors.white70,
          error: Colors.red,
          onError: Colors.black87,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.black87,
          onSurface: Colors.white70,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white70,
          ),
          bodyMedium: TextStyle(
            color: Colors.white70,
          ),
          bodySmall: TextStyle(
            color: Colors.white70,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black87,
        ),
        switchTheme: const SwitchThemeData(
          thumbColor: MaterialStatePropertyAll(Colors.blueAccent),
          trackColor: MaterialStatePropertyAll(
            Colors.white70,
          ),
        ),
        listTileTheme: const ListTileThemeData(
          textColor: Colors.black87,
          iconColor: Colors.black87,
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Colors.indigo,
          circularTrackColor: Colors.white70,
          linearTrackColor: Colors.white70,
        ),
      );
}
