import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:star_in_me_app/screens/UserProfile.dart';
import 'dart:core';
import 'UI2.dart';
import 'UI3.dart';

class UI1 extends StatefulWidget {
  static final onboardingUi1 = '/onboardingUI1';

  @override
  _UI1State createState() => _UI1State();
}

class _UI1State extends State<UI1> {
  int _currentPage = 0;
  int _count = 0;
  List pageList = [
    UI1(),
    UI1(),
    UI1(),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Color(0xff4f439a),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                          child: Image.asset('images/logo.png',
                              height: 50.0, width: 50.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                          height: height,
                          viewportFraction: 1.0,
                          enlargeCenterPage: false,
                          autoPlay: true,
                          pageSnapping: true,
                          pauseAutoPlayOnManualNavigate: true,
                          pauseAutoPlayOnTouch: true,
                          onPageChanged: (value, caourasalPageChangeResult) {
                            _currentPage = value;
                            _count++;
                            if (_count >= 3) {
                              Navigator.pushNamed(
                                  context, UserProfile.userProfileId);
                            }
                          }),
                      items: pageList
                          .map(
                            (item) => Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 40),
                                    color: Color(0xff4f439a),
                                    height: 350,
                                    child: Center(
                                      child: Image.asset('images/UI1.png',
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
                                                fontWeight: FontWeight.w300,
                                                fontSize: 20.0),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.only(top: 30.0),
                                      //   child: Center(
                                      //     child: DotsIndicator(
                                      //       dotsCount: 3,
                                      //       position: 0,
                                      //       decorator: DotsDecorator(
                                      //         color: Color(
                                      //             0xff999999), // Inactive color
                                      //         activeColor: Color(0xff4f439a),
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
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
