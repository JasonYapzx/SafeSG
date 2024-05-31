import 'package:client/component/decoration/quote_decoration.dart';
import 'package:client/widget/appbar_widget.dart';
import 'package:client/widget/home_widget.dart';
import 'package:flutter/material.dart';
import '../../theme/main_theme.dart';

class HomePage extends StatelessWidget {

  final bool isSignedIn = true;

  const HomePage(
    {super.key}
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: AppbarWidget(isSignedIn),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: MainTheme().primaryColor,
        child: MediaQuery.of(context).size.width > 640
            ?  Row(
                children: [
                  const QuoteDecoration(
                      firstText: 'Not sure if it is real? \nBe',
                      emphasise: 'Safe.',
                      secondText: 'Not Sorry.'),
                            
                  HomeWidget(),
                ],
              )
            :  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   SizedBox(height: MediaQuery.of(context).size.height *0.15),
                  const QuoteDecoration(
                      firstText: 'Not sure if it is real? \nBe',
                      emphasise: ' Safe.',
                      secondText: ' Not Sorry.'),
                        SizedBox(height: 30),
                  HomeWidget(),
                ],
              ),
      ),
    );
  }
}
