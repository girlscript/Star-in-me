import 'package:flutter/material.dart';
import 'components/slide_dots.dart';
import 'package:star_in_me_app/model/slide.dart';
import 'components/Slideitems.dart';
import 'dart:async';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 4,
                      child: Image.asset(
                        "images/assets/tsim_logo_main.png",
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Positioned(
                      top: 4,
                      right: 4,
                      child: Row(
                        children: <Widget>[
                          FlatButton(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(fontSize: 18),
                            ),
                            padding: const EdgeInsets.all(15),
                            color: Colors.white,
                            textColor: Colors.deepPurple,
                            onPressed: () {},
                            shape: Border.all(
                                width: 2.0, color: Colors.deepPurple),
                          ),
                          FlatButton(
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(fontSize: 18),
                            ),
                            padding: const EdgeInsets.all(15),
                            color: Colors.deepPurple,
                            textColor: Colors.white,
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    PageView.builder(

                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      scrollDirection: Axis.horizontal,
                      itemCount: SlideList.length,
                      itemBuilder: (ctx, i) => SlideItem(i),
                    ),
                    Container(
                      color: Colors.purple,
                      width: 400,
                      height: 60,
                      padding: const EdgeInsets.all(15),
                      child: Text('THE STAR IN ME',

                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                            fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
