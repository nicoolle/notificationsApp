import 'package:flutter/material.dart';

class MITheme {
  static ThemeData lightTheme() {
    return ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: ThemeData.light().colorScheme.copyWith(),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.lightBlue),
          floatingLabelStyle: TextStyle(),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: Colors.black)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: Colors.deepPurple,
            minimumSize: const Size.fromHeight(50),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.deepPurple),
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ));
  }
}
