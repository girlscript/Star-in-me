import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:star_in_me_app/authentication/login.dart';
import 'package:star_in_me_app/authentication/signup.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:star_in_me_app/model/slide.dart';
import 'package:star_in_me_app/components/roundRechtangleButton.dart';

class LandingPage extends StatefulWidget {
  static final String landingPageId = '/landing';

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentPage = 0;
  final imgList = <String>[
    'images/assets/Build-your-profile.jpg',
    'images/assets/Events.jpg',
    'images/assets/Seek-guidance.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(
              image: AssetImage("images/logo.png"),
            ),
          ),
          actions: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 8.0,
                ),
                child: RoundRectangleButton(
                  child: Text("Login"),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginPage.loginPageId);
                  },
                  borderColor: Colors.deepPurple[600],
                  fillColor: Colors.white,
                  textColor: Colors.deepPurple[600],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 8.0,
                ),
                child: RoundRectangleButton(
                  child: Text('Sign Up'),
                  onPressed: () {
                    Navigator.pushNamed(context, SignupPage.signUpPageId);
                  },
                  fillColor: Colors.deepPurple[600],
                  textColor: Colors.white,
                  borderColor: Colors.deepPurple[600],
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:6.0,right:6.0,top:80.0),
              child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: height * 0.70,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      pageSnapping: true,
                      pauseAutoPlayOnManualNavigate: true,
                      pauseAutoPlayOnTouch: true,
                      onPageChanged: (value, caourasalPageChangeResult) {
                        _currentPage = value;
                      }),
                  items: imgList
                      .map(
                        (item) => Container(
                          child: Stack(
                            children: [
                              Image.asset(
                                item,
                                fit: BoxFit.cover,
                                height: height * 0.70,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      slideList[_currentPage].title,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      slideList[_currentPage].description,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  RoundRectangleButton(
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        'LOOK FOR AN APT GUIDE',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    fillColor: Colors.purple,
                                    textColor: Colors.white,
                                    borderColor: Colors.purple,
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'How it works?',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
