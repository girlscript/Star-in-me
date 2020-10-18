import 'package:flutter/material.dart';
import 'package:star_in_me_app/Events/EventsHomePage.dart';
import 'package:star_in_me_app/Posts/PostPage.dart';
import 'package:star_in_me_app/screens/UserProfile.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({this.currentindex});
  int currentindex = 0;
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color(0xff4f439a),
      currentIndex: widget.currentindex,
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
          widget.currentindex = index;
        });
      },
    );
  }
}
