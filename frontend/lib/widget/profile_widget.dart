import 'package:flutter/material.dart';
import '../component/decoration/quote_decoration.dart';


class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return QuoteDecoration(
      firstText: '',
      emphasise: '',
      secondText: ''
    );
  }
}