import 'package:flutter/material.dart';

Widget Header() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Image(
        image: AssetImage("images/logo.png"),
      ),
    ),
    title: Padding(
      padding: EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(),
        child: TextField(
          decoration: InputDecoration(
            hintText: "People, Network, Blogs & Events",
            hintStyle: TextStyle(fontSize: 14),
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    ),
    actions: [IconButton(icon: Icon(Icons.menu), onPressed: null)],
  );
}
