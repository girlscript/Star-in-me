import 'package:flutter/material.dart';
import 'package:star_in_me_app/LandingPage.dart';



void main() => runApp(MyApp());


 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'The Star in Me',

       theme: ThemeData(
         primaryColor: Colors.purple,
         scaffoldBackgroundColor: Colors.white,
       ),
       home: LandingPage(),
     );
   }
 }
