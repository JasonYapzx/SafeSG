import 'package:client/theme/main_theme.dart';
import 'package:flutter/material.dart';

class MyTextTheme {
  final TextStyle largeAppBarButtonText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: MainTheme().mainTextColor,
  );
  final TextStyle largeAppBarSelectedButtonText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: MainTheme().secondaryColor,
  );
  final TextStyle smallAppBarButtonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: MainTheme().mainTextColor,
  );
  final TextStyle smallAppBarSelectedButtonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: MainTheme().secondaryColor,
  );
  final TextStyle filledButtonText = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: MainTheme().baseColour,
      fontFamily: "Poppins");
  final TextStyle inputBoxLabelText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w300,
    color: MainTheme().baseColour,
  );
  final TextStyle largeQuoteDecorationText = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    color: MainTheme().baseColour,
    fontFamily: "Poppins",
  );
  final TextStyle largeQuoteDecorationEmphasisedText = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    color: MainTheme().secondaryColor,
    fontFamily: "Poppins",
  );
  final TextStyle smallQuoteDecorationText = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    color: MainTheme().baseColour,
    fontFamily: "Poppins",
  );
  final TextStyle smallQuoteDecorationEmphasisedText = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    color: MainTheme().secondaryColor,
    fontFamily: "Poppins",
  );
}
