import 'dart:io';

import 'package:client/component/button/rounded_button.dart';
import 'package:flutter/material.dart';
import '../component/decoration/quote_decoration.dart';
import 'package:image_picker/image_picker.dart'; 

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});
  File? _image; 

  @override
  Widget build(BuildContext context) {
    return Column(children: [
            RoundedButton(
          text: 'Check for scam',
          onPressed: () async { 
                           final image = await ImagePicker().pickImage(source: ImageSource.gallery); 
                           if (image != null) { 
                              _image = File(image.path); 
                           } 
                         }, 
          buttonWidth: 230,
          buttonHeight: 65),
                    const SizedBox(height: 20),
      RoundedButton(text: 'Report scam', onPressed: () async { 
                           final image = await ImagePicker().pickImage(source: ImageSource.gallery); 
                           if (image != null) { 
                              _image = File(image.path); 
                           } 
                         },  buttonWidth: 230, buttonHeight: 65),
   //   const QuoteDecoration(firstText: '', emphasise: 'Home Page', secondText: ''),
    ]);
  }
}
