import 'package:flutter/material.dart';
import 'package:star_in_me_app/Events/EventsHomePage.dart';
import 'package:star_in_me_app/Posts/PostPage.dart';
import 'package:star_in_me_app/Posts/createpost.dart';
import 'package:star_in_me_app/components/bottomnavigation.dart';
import 'package:star_in_me_app/components/header.dart';
import 'package:star_in_me_app/screens/UserProfile.dart';

class MainPage extends StatefulWidget {
  static final String mainPage = '/mainPage';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  static List<Widget> _list = [
    PostPage(),
    EventsTest(),
    CreatePost(),
    UserProfile(),
    PostPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff4f439a),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text(
              'Network',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              child: Icon(Icons.add, size: 30),
              foregroundColor: Color(0xff4f439a),
              backgroundColor: Color(0xffe0deed),
            ),
            title: Text(
              "Add",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: Text(
              'Me',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text(
              'More',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
          });
        },
      ),
      body: Container(
        child: _list.elementAt(_currentIndex),
      ),
    );
  }
}
