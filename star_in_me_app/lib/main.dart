import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Star in Me",
        debugShowCheckedModeBanner: false,

        home: Scaffold(
          backgroundColor: Color(0xffebeced),
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(image: AssetImage("images/logo.png"),
              ),
            ),
            title: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(),
                  child: TextField(
                decoration: InputDecoration(
                  hintText: "People, Network, Blogs & Events",
                  hintStyle: TextStyle(fontSize: 14),
                  prefixIcon:Icon(Icons.search),
          
                  ),
                ),
              ),
            ),

            actions: [
              IconButton(icon: Icon(Icons.menu), onPressed: null)
            ],
        ),
      
      bottomNavigationBar: BottomNavigationBar(
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
        ),
    )
    );
  }
}