import 'package:client/theme/my_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double buttonWidth;
  final void Function() onPressed;
  final double buttonHeight;

  const RoundedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.buttonWidth,
    required this.buttonHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      child: FilledButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: MyTextTheme().filledButtonText,
        ),
      ),
    );
  }
}
