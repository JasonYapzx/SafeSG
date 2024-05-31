import 'package:client/theme/my_text_theme.dart';
import 'package:flutter/material.dart';

class MainTheme {
  final ColorScheme kColourScheme = ColorScheme.fromSeed(
    seedColor: Color.fromARGB(255, 37, 51, 78),
    primary: Color.fromARGB(255, 37, 51, 78),
    //const Color(0xFF8CC6C7),
    onPrimary: Colors.white,
    secondary: Color.fromARGB(255, 233, 81, 81),
    //const Color(0xFFFA5B5A),
    onSecondary: Colors.white,
  );
  final Color kScaffoldBackgroundColor =
      const Color.fromARGB(255, 109, 61, 189);
  final Color kTextFieldFillColour = Colors.white;
  final Color baseColour = Colors.white;
  final Color primaryColor = Color.fromARGB(255, 37, 51, 78);
  final Color primaryTransparent =
      Color.fromARGB(255, 37, 51, 78).withOpacity(0.1);
  final Color secondaryColor = Color.fromARGB(255, 233, 81, 81);
  final Color secondaryTransparent =
      Color.fromARGB(255, 233, 81, 81).withOpacity(0.1);
  final Color mainTextColor = const Color(0xFF565656);
  final TextStyle logoText =
      const TextStyle(fontSize: 28, fontWeight: FontWeight.w400);
  final TextStyle landingText = const TextStyle(
      fontSize: 48,
      color: Color.fromARGB(255, 37, 51, 78),
      fontWeight: FontWeight.w400);
  final TextStyle tutText = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 233, 81, 81));
  final TextStyle appBarButtonText =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
  ThemeData get applyMainTheme {
    return ThemeData(fontFamily: 'Poppins').copyWith(
        useMaterial3: true,
        colorScheme: kColourScheme,
        scaffoldBackgroundColor: baseColour,
        inputDecorationTheme:
            InputDecorationTheme(filled: true, fillColor: kTextFieldFillColour),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll<Color>(mainTextColor),
            overlayColor: MaterialStatePropertyAll<Color>(secondaryTransparent),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
                textStyle: MaterialStatePropertyAll<TextStyle>(
                    MyTextTheme().filledButtonText),
                foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                backgroundColor:
                    MaterialStatePropertyAll<Color>(secondaryColor))));
  }
}
