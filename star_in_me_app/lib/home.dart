import 'package:flutter/material.dart';
import 'bottomnavigation.dart';
import 'header.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color(0xffebeced),
          appBar: Header(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}