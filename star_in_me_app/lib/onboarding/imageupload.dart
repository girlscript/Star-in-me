import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class Image_Upload extends StatelessWidget {

  static final imageupload = '/onboardingimageupload';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageCapture(),
    );
  }
}

class ImageCapture extends StatefulWidget {
  @override
  _ImageCaptureState createState() => _ImageCaptureState();
}

class _ImageCaptureState extends State<ImageCapture> {

  //active image file
  File _image; //this contains the image file
  final picker = ImagePicker();

  //when the user selects the image from the gallery the state changes
  Future pickImage() async {
    final selectedImage = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (selectedImage != null) {
        _image = File(selectedImage.path);
      }
    });
  }





  @override
  Widget build(BuildContext context)
  {
    {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Image.asset('images/logo.png',
                    height: 55.0, width: 55.0),
                alignment: Alignment.topLeft,
              ),
              CircleAvatar(
                radius: 150,
                child : _image == null ? Image.asset("images/uploadimg.png") : null,
                backgroundImage: _image != null ? FileImage(_image) : null,
                backgroundColor: Color(0xffECECEC),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Container(
                  child:Text(
                    'UPLOAD YOUR PHOTO HERE',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0),
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.all(20.0),
                child: FloatingActionButton(
                  backgroundColor: Color(0xffa7a1cd),
                  child: Icon(Icons.add_a_photo),
                  onPressed: ()
                    {
                      pickImage();
                    }
                ),
              ),
            ],
          ),
        ),
      );
    }

  }

}






