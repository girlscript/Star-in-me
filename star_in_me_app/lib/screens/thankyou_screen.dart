import 'package:flutter/material.dart';
import 'package:star_in_me_app/authentication/signup.dart';
import 'package:star_in_me_app/onboarding/onbordingPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
    name = FirebaseAuth.instance.currentUser.displayName;
    print(name);

    if (name == "" || arguments != null) {
      name = arguments['name'];
      print(name);
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
                          TextStyle(color: Colors.deepPurple[500], fontSize: 25.0, fontWeight: FontWeight.bold)),
                  Text(
                    'The star in me,',
                    style: TextStyle(color: Colors.purple[300], fontSize: 25.0, fontWeight: FontWeight.bold),
                  )
                ]),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(name + "!",
                          style: TextStyle(
                              color: Colors.deepPurple[500], fontSize: 25.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Text(
                      "You're almost done",
                      style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Text(
                      "Thank you for joining.We may reach out to you for",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      "additional validation, if required .",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Text(
                      "Let us help you create an outstanding profile",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                   width: double.infinity,
                   height: 40,
                   child: RaisedButton(
                     onPressed: () {
                     Navigator.pushNamed(context, onboardingPage.onboarding);
                     },
                     color: Colors.deepPurple[500],
                     splashColor: Colors.blueAccent,
                     child: Text(
                     'START BUILDING YOUR PROFILE',
                     style: TextStyle(color: Colors.white),
                     ),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(5),
                     ),
                  ),
                ),
              ])),
        ),
      ),
    );
  }
}
