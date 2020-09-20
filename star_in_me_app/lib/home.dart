import 'package:flutter/material.dart';
import 'bottomnavigation.dart';
import 'header.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
int index=0;
class _HomeState extends State<Home> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color(0xffebeced),
          appBar: (index==0)?Header_Non_Login2():Header_Non_Login1(),//replace with Header() after login
      bottomNavigationBar: BottomNavigation(),
    );
  }
  Widget Header_Non_Login1(){
    return AppBar(
      backgroundColor: Colors.white,
      title: Padding(
        padding: EdgeInsets.all(2.0),
        child: Container(
          decoration: BoxDecoration(),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search for People, Networks, Blogs & Events",
              hintStyle: TextStyle(fontSize: 14),
              prefixIcon:Icon(Icons.search),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(icon: Icon(Icons.remove_circle_outline,color: Colors.grey,), onPressed: (){
          setState(() {
            index=0;
          });
        })
      ],
    );
  }
  Widget Header_Non_Login2(){
    return AppBar(
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image(image: AssetImage("images/logo.png"),
        ),
      ),

      actions: [
        IconButton(icon: Icon(Icons.search,color: Colors.grey,), onPressed: (){
          setState(() {
            index=1;
          });
        }),
        Padding(
          child: FlatButton(
            shape: RoundedRectangleBorder(side: BorderSide(
                color: Colors.deepPurple,
                width: 1,
                style: BorderStyle.solid
            ), borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))),
            child: Padding(
              padding: EdgeInsets.all(5),
              child:  Text('LOGIN',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
            ),
            onPressed: (){
              print('login');
              return null;
            },
          ),
          padding: EdgeInsets.only(left: 5,top: 10,bottom: 10),
        ),
        Padding(
          child: FlatButton(
            color: Colors.deepPurple,
            shape: RoundedRectangleBorder(side: BorderSide(
                color: Colors.deepPurple,
                width: 1,
                style: BorderStyle.solid
            ), borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))),
            child: Padding(
              padding: EdgeInsets.all(5),
              child:  Text('SIGN UP',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            onPressed: (){
              print('Sign up');
              return null;
            },
          ),
          padding: EdgeInsets.only(right: 5,top: 10,bottom: 10),
        ),
      ],
    );
  }
}