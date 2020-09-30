import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:star_in_me_app/onboarding/UI1.dart';
import 'package:star_in_me_app/screens/UserProfile.dart';

class ThankYou extends StatefulWidget {
  static final String thankYouPage = '/login/thankyou';

  @override
  _ThankYouState createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  String name = FirebaseAuth.instance.currentUser.displayName ?? "Anonymous";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                Center(
                  child: Row(children: <Widget>[
                    Text('Welcome to ',
                        style: TextStyle(
                            color: Colors.purpleAccent[700], fontSize: 20.0)),
                    Text(
                      'The star in me,',
                      style: TextStyle(color: Colors.pink[600], fontSize: 20.0),
                    )
                  ]),
                ),
                Text(name,
                    style: TextStyle(
                        color: Colors.purpleAccent[700], fontSize: 20.0)),
                SizedBox(height: 15.0),
                Text(
                  "You're almost done",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Thank you for joining.We may reach out to you for",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "additional validation,if required",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Let us help you create an outstanding profile",
                  style: TextStyle(color: Colors.grey),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, UI1.onboardingUi1);
                  },
                  color: Colors.purple[700],
                  splashColor: Colors.blueAccent,
                  child: Text('START BUILDING YOUR PROFILE'),
                )
              ])),
        ),
      ),
    );
  }
}
