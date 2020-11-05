import 'package:flutter/material.dart';
import 'package:star_in_me_app/onboarding/onbordingPage.dart';

class ThankYou extends StatefulWidget {
  static final String thankYouPage = '/login/thankyou';

  @override
  _ThankYouState createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  String name="";
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;

    if (arguments != null) {
      name=arguments['name'];
    }
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                Row(children: <Widget>[
                  Text('Welcome to ',
                      style:
                          TextStyle(color: Colors.purple[700], fontSize: 25.0)),
                  Text(
                    'The star in me,',
                    style: TextStyle(color: Colors.purple[300], fontSize: 25.0),
                  )
                ]),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(name,
                          style: TextStyle(
                              color: Colors.purple[700], fontSize: 25.0)),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Text(
                      "You're almost done",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Text(
                      "Thank you for joining.We may reach out to you for",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "additional validation, if required .",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Text(
                      "Let us help you create an outstanding profile",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, onboardingPage.onboarding);
                  },
                  color: Colors.purple[700],
                  splashColor: Colors.blueAccent,
                  child: Text(
                    'START BUILDING YOUR PROFILE',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ])),
        ),
      ),
    );
  }
}
