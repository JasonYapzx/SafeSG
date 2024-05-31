import 'package:client/component/button/rounded_button.dart';
import 'package:client/page/home_page.dart';
import 'package:flutter/material.dart';

import '../component/decoration/quote_decoration.dart';
import '../theme/main_theme.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.isScam});
  final bool isScam;
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
            isScam
                ? const QuoteDecoration(
                    firstText: '',
                    emphasise: 'Beware!\n',
                    secondText: 'This is likely a scam!')
                : const QuoteDecoration(
                    firstText: 'This message looks ',
                    emphasise: 'safe.\n',
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
                  isScam
                  ? Text(
                      "According to our analysis and reports by the community, this message is likely a scam. Do not click on any links or provide any personal information!",
                      style: TextStyle(fontSize: 17))
                      : Text(
                          "According to our analysis, this message does not look suspicious. However, stay vigilant when providing any personal information.",
                          style: TextStyle(fontSize: 17)),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            RoundedButton(
                text: "Complete",
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
