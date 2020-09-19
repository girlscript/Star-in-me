import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:loading/loading.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

import 'authentication/login.dart';
import 'authentication/signup.dart';

import 'landing.dart';
import 'thankyou_screen.dart';
import 'home.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:Color(0x00000000)
    ));

    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder:(context,snapshot){
        if(snapshot.hasError){
          print("Something Wrong to Initialize FLutter Firebase");
          return null;
        }
        else if(snapshot.connectionState ==ConnectionState.done){
          return MaterialApp(
      debugShowCheckedModeBanner: false,      
      home:LandingPage(),
      routes: <String,WidgetBuilder>{
        "login":(context)=>LoginPage(),
        "signup":(context)=>SignupPage(),
        "thanks":(context)=>ThankYou(),
        "home":(context)=>Home(),
        

      },  
      
    );
        }
        return Loading(indicator: BallPulseIndicator(),size: 100.0,color:Colors.blue); 

      }
       );
  }
}
