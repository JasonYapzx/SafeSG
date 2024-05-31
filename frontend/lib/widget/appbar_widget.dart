import 'package:client/theme/main_theme.dart';
import 'package:client/theme/my_text_theme.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  final bool isSignedIn; 

  const AppbarWidget(
    this.isSignedIn,
    {super.key}
    );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: MainTheme().baseColour,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/images/safesglogo.jpg',
            height: 80,
          ),
           Row(
            children: [
              SizedBox(width: 10),
              Text('SafeSG', style: MainTheme().logoText,),
              
              // TextButton(
              //   onPressed: () {},
              //   child: Text(
              //     'About Gathr',
              //     style: MediaQuery.of(context).size.width > 640
              //         ? MyTextTheme().largeAppBarButtonText
              //         : MyTextTheme().smallAppBarButtonText,
              //   ),
              //   //hoverColor: MainTheme().secondaryColor.withOpacity(0.5),
              // ),
              
              // isSignedIn ? 
              // TextButton.icon(
              //   onPressed: () {
              //     Navigator.pushReplacement(
              //       context, 
              //       MaterialPageRoute(builder: (context) => const ProfilePage())
              //     );
              //   },
              //   icon: Icon(
              //     Icons.person,
              //     color: MainTheme().secondaryColor,
              //   ),
              //   label: Text(
              //     'Profile',
              //     style: MediaQuery.of(context).size.width > 640
              //         ? MyTextTheme().largeAppBarSelectedButtonText
              //         : MyTextTheme().smallAppBarSelectedButtonText,
              //   ),
              // ) :
              // TextButton.icon(
              //   onPressed: () {},
              //   icon: Icon(
              //     Icons.person,
              //     color: MainTheme().secondaryColor,
              //   ),
              //   label: Text(
              //     'Sign In',
              //     style: MediaQuery.of(context).size.width > 640
              //         ? MyTextTheme().largeAppBarSelectedButtonText
              //         : MyTextTheme().smallAppBarSelectedButtonText,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
