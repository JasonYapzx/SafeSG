import 'package:client/component/button/rounded_button.dart';
import 'package:client/page/home_page.dart';
import 'package:flutter/material.dart';

import '../component/decoration/quote_decoration.dart';
import '../theme/main_theme.dart';

class TutorialPage extends StatelessWidget {
  const TutorialPage({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const QuoteDecoration(
                firstText: 'How does this app keep you',
                emphasise: ' ' + 'safe?',
                secondText: ''),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.5,
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.05,
                  horizontal: MediaQuery.of(context).size.width * 0.04),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                      "To check if a message is likely a scam, upload a screenshot of the text or \nemail by clicking on",
                      style: TextStyle(fontSize: 17)),
                  Text("<Check for scam>", style: MainTheme().tutText),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                      "To report a message as a scam, upload a screenshot of the text or email by clicking",
                      style: TextStyle(fontSize: 17)),
                  Text("<Report scam>", style: MainTheme().tutText),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Text("Your report will benefit the community!",
                      style: TextStyle(fontSize: 17)),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            RoundedButton(
                text: "Try it out!",
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                buttonWidth: 200,
                buttonHeight: 60),
          ],
        ),
      ),
    );
  }
}
