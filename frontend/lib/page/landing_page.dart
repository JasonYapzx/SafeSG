import 'package:client/component/button/rounded_button.dart';
import 'package:client/page/home_page.dart';
import 'package:client/page/tutorial_page.dart';
import 'package:flutter/material.dart';

import '../component/decoration/quote_decoration.dart';
import '../theme/main_theme.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        //title: AppbarWidget(isSignedIn),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: MainTheme().primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'lib/assets/images/safesglogo.jpg',
                    height: 120,
                  ),
                  Text(
                    'SafeSG',
                    style: MainTheme().landingText,
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            const QuoteDecoration(
                firstText: '',
                emphasise: 'Safe',
                secondText: 'guarding you from scams.'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            RoundedButton(
                text: "Let's Begin!",
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TutorialPage()));
                },
                buttonWidth: 200,
                buttonHeight: 60),
          ],
        ),
      ),
    );
  }
}
