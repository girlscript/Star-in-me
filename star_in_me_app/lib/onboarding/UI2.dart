import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UI2 extends StatefulWidget {
  static final onboardingUi2 = '/onboardingUI2';
  @override
  _UI2State createState() => _UI2State();
}

class _UI2State extends State<UI2> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(bottom: 40),
        color: Color(0xff4f439a),
        height: 350,
        child: Center(
          child: Image.asset('images/UI2.png', height: 280.0, width: 280.0),
        ),
      ),
      Column(
        children: <Widget>[
          Center(
            child: RichText(
              text: TextSpan(
                text: 'Showcase the ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'star',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffaf61a5),
                    ),
                  ),
                  TextSpan(text: ' in you'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                'Showcase your story through our '
                'visually captivating profile builder!',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
