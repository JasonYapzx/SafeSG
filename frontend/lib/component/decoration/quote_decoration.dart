import 'package:client/theme/my_text_theme.dart';
import 'package:flutter/material.dart';

class QuoteDecoration extends StatelessWidget {
  const QuoteDecoration(
      {super.key,
      required this.firstText,
      required this.emphasise,
      required this.secondText});

  final String firstText;
  final String emphasise;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
      width: MediaQuery.of(context).size.width > 640
          ? MediaQuery.of(context).size.width * 0.4
          : MediaQuery.of(context).size.width * 0.85,
      child: RichText(
        text: MediaQuery.of(context).size.width > 640
            ? TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: firstText,
                      style: MyTextTheme().largeQuoteDecorationText),
                  TextSpan(
                      text: emphasise,
                      style: MyTextTheme().largeQuoteDecorationEmphasisedText),
                  TextSpan(
                      text: secondText,
                      style: MyTextTheme().largeQuoteDecorationText),
                ],
              )
            : TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: firstText,
                      style: MyTextTheme().smallQuoteDecorationText),
                  TextSpan(
                      text: emphasise,
                      style: MyTextTheme().smallQuoteDecorationEmphasisedText),
                  TextSpan(
                      text: secondText,
                      style: MyTextTheme().smallQuoteDecorationText),
                ],
              ),
      ),
    );
  }
}
