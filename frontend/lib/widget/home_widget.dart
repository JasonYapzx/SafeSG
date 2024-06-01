import 'dart:io';

import 'package:client/component/button/rounded_button.dart';
import 'package:flutter/material.dart';
import '../component/decoration/quote_decoration.dart';
import 'package:image_picker/image_picker.dart'; 
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'dart:typed_data'; 
import 'package:flutter/foundation.dart'; 
import 'dart:convert'; 
import 'package:client/page/results_page.dart';


class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  final ImagePicker _picker = ImagePicker();
  File? _image;

Future<void> _pickAndUploadImage(BuildContext context) async {
  final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
  if (pickedFile != null) {
    if (kIsWeb) {
      // Read the image file as bytes
      final imageBytes = await pickedFile.readAsBytes();

      // Upload the image bytes
      await _uploadImage(context, imageBytes, pickedFile.name);
    } else {
      // Convert the picked file to a dart:io File
      final imageFile = File(pickedFile.path);

      // Read the image file as bytes
      final imageBytes = await imageFile.readAsBytes();

      // Upload the image bytes
      await _uploadImage(context, imageBytes, basename(imageFile.path));
    }
  }
}

Future<void> _uploadImage(BuildContext context, Uint8List imageBytes, String filename) async {
  var request = http.MultipartRequest(
    'POST',
    Uri.parse('http://localhost:3000/api/check_scam_image'),
  );

  // Add the bytes to the multipart request
  request.files.add(http.MultipartFile.fromBytes(
    'image',
    imageBytes,
    filename: filename,
  ));

  var streamedResponse = await request.send();
  var response = await http.Response.fromStream(streamedResponse);

  if (response.statusCode == 200) {
    print('Image uploaded successfully');
    var responseData = jsonDecode(response.body);
    print('Response data: $responseData');
    bool isScam = responseData['isScam'];
    int percentage = responseData['percentage'];
    List<dynamic> scamPatterns = responseData['scamPatterns'];
    String summary = responseData['summary'];
    print('Is Scam: $isScam');
    print('Percentage: $percentage');
    print('Scam Patterns: $scamPatterns');
    print('Summary: $summary');

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultsPage(isScam: isScam),
      ),
    );
  } else {
    print('Image upload failed with status: ${response.statusCode}');
  }
}

void _showHelpDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('How to use'),
        content: Text(
          '1. Press the "Check for scam" button to select an image from your gallery.\n'
          '2. The app will analyze the image and determine if it contains any scam patterns.\n'
          '3. You will be redirected to the results page where you can see the analysis results.'
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedButton(
          text: 'Check for scam',
          onPressed: () => _pickAndUploadImage(context),
          buttonWidth: 230,
          buttonHeight: 65,
        ),
        const SizedBox(height: 20),
        RoundedButton(
          text: 'Help',
          onPressed: () => _showHelpDialog(context),
          buttonWidth: 230,
          buttonHeight: 65,
        ),
      ],
    );
  }
}