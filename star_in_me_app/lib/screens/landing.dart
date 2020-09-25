import 'package:flutter/material.dart';
import 'package:star_in_me_app/authentication/login.dart';
import 'package:star_in_me_app/authentication/signup.dart';

class LandingPage extends StatefulWidget {
  static final String landingPageId = '/';

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
              Container(
                child: Image.asset('images/logo.png',
                  height: 50.0,
                  width: 50.0,
                  fit: BoxFit.fitWidth,
                ),
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                padding: EdgeInsets.only(left: 120.0,top: 10.0),
                child: IconButton(
                  icon: Icon(Icons.search),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 165, right: 115, top: 10.0),
                child: MaterialButton(
                minWidth: double.infinity,
                height: 35,
                onPressed: () {
                  Navigator.pushNamed(context, LoginPage.loginPageId);
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.deepPurple[600]),
                    borderRadius: BorderRadius.circular(2.0)),
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,
                  color: Colors.deepPurple[600],
                  ),
                ),
               ),
              ),
              Container(
                margin: EdgeInsets.only(left: 240, top: 10.0, right: 15.0),
                child: MaterialButton(
                minWidth: double.infinity,
                height: 35,
                onPressed: () {
                  Navigator.pushNamed(context, SignupPage.signUpPageId);
                },
                color: Colors.deepPurple[600],
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.deepPurple[600]),
                    borderRadius: BorderRadius.circular(2.0)),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,
                  color: Colors.white),
                ),
               ),
              ),
             ],
            ),
           ),
          Container(
            child: Image.asset('images/background.png'),
          ), 
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 145.5,
            color: Colors.black,
            child: Text(
              "How it works?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,
              color: Colors.white,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
             ),
            ),
           ), 
        ],  
      ),
    );
  }
}
