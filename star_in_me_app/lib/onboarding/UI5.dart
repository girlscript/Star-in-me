import 'package:flutter/material.dart';
import 'package:star_in_me_app/onboarding/UI6.dart';
import 'package:star_in_me_app/onboarding/UI7.dart';

class UI5 extends StatelessWidget {
  static final onboardingUi5 = '/onboardingUI5';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.grey[200],
              expandedHeight: 400,
              leading: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/logo.png'),
              ),
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'I am a',
                  style: TextStyle(
                    color: Colors.deepPurple[500],
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60.0,
                    ),
                    FlatButton(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.account_circle_outlined, size: 40,),
                            Text(' Student', style: TextStyle(fontSize: 16),),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, UI6.onboardingUi6);
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    FlatButton(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(Icons.account_circle_sharp, size: 40,),
                            Text(' Working Professional', style: TextStyle(fontSize: 16),),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, UI7.onboardingUi7);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

