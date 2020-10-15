import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:star_in_me_app/onboarding/UI4.dart';
import 'package:star_in_me_app/screens/UserProfile.dart';
import 'dart:core';
import 'package:star_in_me_app/onboarding/UI2.dart';
import 'package:star_in_me_app/onboarding/UI3.dart';
import 'package:star_in_me_app/onboarding/UI1.dart';

class onboardingPage extends StatefulWidget {
  static final onboarding = '/onboarding';

  @override
  _onboardingPageState createState() => _onboardingPageState();
}

class _onboardingPageState extends State<onboardingPage> {
  int _currentPage = 0;
  int _count = 0;
  bool autoplay = true;
  List<Widget> pageList = [
    UI1(),
    UI2(),
    UI3(),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
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
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 0.70 * height,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    autoPlay: autoplay,
                    pageSnapping: true,
                    pauseAutoPlayOnManualNavigate: true,
                    pauseAutoPlayOnTouch: true,
                    onPageChanged: (value, caourasalPageChangeResult) {
                      print(value);

                      setState(() {
                        _currentPage = value;

                        if (_currentPage == pageList.length - 1) {
                          autoplay = false;
                          Future.delayed(Duration(seconds: 4), () {
                            if (_currentPage == pageList.length - 1)
                              Navigator.pushNamed(context, UI4.onboardingUi4);
                          });
                        }
                      });
                    }),
                items: pageList.map((item) {
                  return Builder(builder: (BuildContext context) {
                    return item;
                  });
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: DotsIndicator(
                  dotsCount: 3,
                  position: _currentPage.toDouble(),
                  decorator: DotsDecorator(
                    color: Color(0xff999999), // Inactive color
                    activeColor: Color(0xff4f439a),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
