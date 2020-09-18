import 'package:flutter/material.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
   int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Color(0xff4f439a),
        currentIndex: currentindex,

        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Network',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            BottomNavigationBarItem(
            icon: CircleAvatar(child: Icon(Icons.add,size: 30),
            foregroundColor: Color(0xff4f439a),
            backgroundColor: Color(0xffe0deed),),
            title: Text("Add",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
               BottomNavigationBarItem(
            icon: Icon(Icons.person,),
            title: Text('Me',style: TextStyle(fontWeight: FontWeight.bold),),

            ),
                  BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('More',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
        ],

        onTap: (index){
          setState(() {
            currentindex = index;
          });
        },
        );
  }
}