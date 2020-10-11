import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UI3 extends StatefulWidget {
  static final onboardingUi3 = '/onboardingUI3';
  @override
  _UI3State createState() => _UI3State();
}

class _UI3State extends State<UI3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Color(0xff4f439a),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                      child: Image.asset('images/logo.png',
                          height: 50.0, width: 50.0),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                color: Color(0xff4f439a),
                height: 350,
                child: Center(
                  child: Image.asset('images/UI3.png',
                      height: 280.0, width: 280.0),
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
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 20.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Center(
                      child: DotsIndicator(
                        dotsCount: 3,
                        position: 0,
                        decorator: DotsDecorator(
                          color: Color(0xff999999), // Inactive color
                          activeColor: Color(0xff4f439a),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
