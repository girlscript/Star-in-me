import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventsTest extends StatelessWidget {
  static final EventsTestPage = "/Events";

  @override
  Widget imageCarousel = new Container(
    child: Container(
      height: 500,
      child: Stack(
        children: [
          Carousel(
            boxFit: BoxFit.cover,
            images: [
              AssetImage('Asset/Images/Welcome-Screen.jpg'),
              AssetImage('Asset/Images/Build-your-profile.jpg'),
              AssetImage('Asset/Images/Events.jpg'),
              AssetImage('Asset/Images/Seek-guidance.jpg'),
            ],
            autoplay: true,
            autoplayDuration: Duration(seconds: 8),
            dotColor: Colors.deepPurple,
            showIndicator: true,
            dotBgColor: Colors.transparent.withOpacity(0.0),
            dotPosition: DotPosition.topLeft,
            dotVerticalPadding: 100.0,
            dotHorizontalPadding: 15.0,
          ),
          Container(
            margin: EdgeInsets.only(top: 150.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "WEFT Women Entrepreneurs Annual Conference & Awards 2019",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 250),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Wouldn't it be amazing to access a unique profile builder to create a visual resume and showcase yourself using videos, pictures and stories?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 350),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                icon: Icon(
                  Icons.alarm,
                  size: 28.0,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 375, left: 50),
            child: Text(
              "10 am - 5 pm",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 354, left: 170),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                icon: Icon(
                  Icons.insert_invitation,
                  size: 28.0,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 375, left: 224),
            child: Text(
              "21 Sep, 22 Sep",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 400),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                icon: Icon(
                  Icons.location_on,
                  size: 28.0,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 425, left: 50),
            child: Text(
              "Koramangala, Bengaluru",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    ),
  );
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.only(left: 2.0, top: 2.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.dehaze,
                          size: 28.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'Asset/Images/tsim_main_logo.png',
                      height: 40.0,
                      width: 50.0,
                      fit: BoxFit.fitWidth,
                    ),
                    padding: EdgeInsets.only(left: 45.0, top: 2.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 140.0, top: 2.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 28.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 190, right: 90, top: 2.0),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 35,
                      onPressed: () {},
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.deepPurple[600]),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.deepPurple[600],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 260, top: 2.0, right: 10.0),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 35,
                      onPressed: () {},
                      color: Colors.deepPurple[600],
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.deepPurple[600]),
                          borderRadius: BorderRadius.circular(2.0)),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            imageCarousel,
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 220.0),
              padding: EdgeInsets.all(6.0),
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.deepPurple,
                    width: 2.0,
                  )),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  items: [
                    DropdownMenuItem(
                      child: Text("First Item"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Second Item"),
                      value: 2,
                    ),
                    DropdownMenuItem(child: Text("Third Item"), value: 3),
                    DropdownMenuItem(child: Text("Fourth Item"), value: 4),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'My Events',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 600,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 300,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 6,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                  'Asset/Images/eventsslide/eventscreatives.png'),
                              ListTile(
                                title: const Text('HEADING'),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.alarm,
                                  )),
                                  Text('2pm - 5pm')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.insert_invitation,
                                  )),
                                  Text('10 October 2020')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.location_on,
                                  )),
                                  Text('Bangalore, India')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.location_on,
                                  )),
                                  Text('Free')
                                ],
                              ),
                              Container(
                                height: 52,
                                child: ButtonBar(
                                  alignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        FlatButton(
                                          onPressed: () {
                                            // Perform some action
                                          },
                                          color: Colors.deepPurple,
                                          child: const Text(
                                            'VIEW TICKET',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                        FlatButton(
                                          onPressed: () {
                                            // Perform some action
                                          },
                                          child: const Text(
                                            'REMIND ME!',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 6,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                  'Asset/Images/eventsslide/eventscreatives.png'),
                              ListTile(
                                title: const Text('HEADING'),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.alarm,
                                  )),
                                  Text('2pm - 5pm')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.insert_invitation,
                                  )),
                                  Text('10 October 2020')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.location_on,
                                  )),
                                  Text('Bangalore, India')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.location_on,
                                  )),
                                  Text('Free')
                                ],
                              ),
                              Container(
                                height: 52,
                                child: ButtonBar(
                                  alignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        FlatButton(
                                          onPressed: () {
                                            // Perform some action
                                          },
                                          color: Colors.deepPurple,
                                          child: const Text(
                                            'VIEW TICKET',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                        FlatButton(
                                          onPressed: () {
                                            // Perform some action
                                          },
                                          child: const Text(
                                            'REMIND ME!',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 6,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                  'Asset/Images/eventsslide/eventscreatives.png'),
                              ListTile(
                                title: const Text('HEADING'),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.alarm,
                                  )),
                                  Text('2pm - 5pm')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.insert_invitation,
                                  )),
                                  Text('10 October 2020')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.location_on,
                                  )),
                                  Text('Bangalore, India')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.location_on,
                                  )),
                                  Text('Free')
                                ],
                              ),
                              Container(
                                height: 52,
                                child: ButtonBar(
                                  alignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        FlatButton(
                                          onPressed: () {
                                            // Perform some action
                                          },
                                          color: Colors.deepPurple,
                                          child: const Text(
                                            'VIEW TICKET',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                        FlatButton(
                                          onPressed: () {
                                            // Perform some action
                                          },
                                          child: const Text(
                                            'REMIND ME!',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Recommended Events',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 600,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 300,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 6,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                  'Asset/Images/eventsslide/eventscreatives.png'),
                              ListTile(
                                title: const Text('HEADING'),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.alarm,
                                  )),
                                  Text('2pm - 5pm')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.insert_invitation,
                                  )),
                                  Text('10 October 2020')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.location_on,
                                  )),
                                  Text('Bangalore, India')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.location_on,
                                  )),
                                  Text('Free')
                                ],
                              ),
                              Container(
                                height: 52,
                                child: ButtonBar(
                                  alignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        FlatButton(
                                          onPressed: () {
                                            // Perform some action
                                          },
                                          color: Colors.deepPurple,
                                          child: const Text(
                                            'REGISTER',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                        FlatButton(
                                          onPressed: () {
                                            // Perform some action
                                          },
                                          child: const Text(
                                            'VIEW EVENT',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 6,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                  'Asset/Images/eventsslide/eventscreatives.png'),
                              ListTile(
                                title: const Text('HEADING'),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.alarm,
                                  )),
                                  Text('2pm - 5pm')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.insert_invitation,
                                  )),
                                  Text('10 October 2020')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.location_on,
                                  )),
                                  Text('Bangalore, India')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.location_on,
                                  )),
                                  Text('Free')
                                ],
                              ),
                              Container(
                                height: 52,
                                child: ButtonBar(
                                  alignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        FlatButton(
                                          onPressed: () {
                                            // Perform some action
                                          },
                                          color: Colors.deepPurple,
                                          child: const Text(
                                            'REGISTER',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                        FlatButton(
                                          onPressed: () {
                                            // Perform some action
                                          },
                                          child: const Text(
                                            'VIEW EVENT',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 6,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(
                                  'Asset/Images/eventsslide/eventscreatives.png'),
                              ListTile(
                                title: const Text('HEADING'),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.alarm,
                                  )),
                                  Text('2pm - 5pm')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.insert_invitation,
                                  )),
                                  Text('10 October 2020')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.location_on,
                                  )),
                                  Text('Bangalore, India')
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                    Icons.location_on,
                                  )),
                                  Text('Free')
                                ],
                              ),
                              Container(
                                height: 52,
                                child: ButtonBar(
                                  alignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        FlatButton(
                                          onPressed: () {
                                            // Perform some action
                                          },
                                          color: Colors.deepPurple,
                                          child: const Text(
                                            'REGISTER',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                        FlatButton(
                                          onPressed: () {
                                            // Perform some action
                                          },
                                          child: const Text(
                                            'VIEW EVENT',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 90, right: 90),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 35,
                onPressed: () {},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.deepPurple[600]),
                    borderRadius: BorderRadius.circular(4.0)),
                child: Text(
                  "VIEW ALL",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.deepPurple[600],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'All Events',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 650,
                child: Container(
                  width: 300,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                              'Asset/Images/eventsslide/eventscreatives.png'),
                          ListTile(
                            title: const Text('HEADING'),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                Icons.alarm,
                              )),
                              Text('2pm - 5pm')
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                Icons.insert_invitation,
                              )),
                              Text('10 October 2020')
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                Icons.location_on,
                              )),
                              Text('Bangalore, India')
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                Icons.location_on,
                              )),
                              Text('Free')
                            ],
                          ),
                          Container(
                            height: 52,
                            child: ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    FlatButton(
                                      onPressed: () {
                                        // Perform some action
                                      },
                                      color: Colors.deepPurple,
                                      child: const Text(
                                        'REGISTER',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        // Perform some action
                                      },
                                      child: const Text(
                                        'I AM INTERESTED',
                                        style: TextStyle(
                                            color: Colors.deepPurple,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 650,
                child: Container(
                  width: 300,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                              'Asset/Images/eventsslide/eventscreatives.png'),
                          ListTile(
                            title: const Text('HEADING'),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                Icons.alarm,
                              )),
                              Text('2pm - 5pm')
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                Icons.insert_invitation,
                              )),
                              Text('10 October 2020')
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                Icons.location_on,
                              )),
                              Text('Bangalore, India')
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                Icons.location_on,
                              )),
                              Text('Free')
                            ],
                          ),
                          Container(
                            height: 52,
                            child: ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    FlatButton(
                                      onPressed: () {
                                        // Perform some action
                                      },
                                      color: Colors.deepPurple,
                                      child: const Text(
                                        'REGISTER',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        // Perform some action
                                      },
                                      child: const Text(
                                        'I AM INTERESTED',
                                        style: TextStyle(
                                            color: Colors.deepPurple,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 650,
                child: Container(
                  width: 300,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                              'Asset/Images/eventsslide/eventscreatives.png'),
                          ListTile(
                            title: const Text('HEADING'),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                Icons.alarm,
                              )),
                              Text('2pm - 5pm')
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                Icons.insert_invitation,
                              )),
                              Text('10 October 2020')
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                Icons.location_on,
                              )),
                              Text('Bangalore, India')
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                Icons.location_on,
                              )),
                              Text('Free')
                            ],
                          ),
                          Container(
                            height: 52,
                            child: ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    FlatButton(
                                      onPressed: () {
                                        // Perform some action
                                      },
                                      color: Colors.deepPurple,
                                      child: const Text(
                                        'REGISTER',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        // Perform some action
                                      },
                                      child: const Text(
                                        'I AM INTERESTED',
                                        style: TextStyle(
                                            color: Colors.deepPurple,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 90, right: 90),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 35,
                onPressed: () {},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.deepPurple[600]),
                    borderRadius: BorderRadius.circular(4.0)),
                child: Text(
                  "ALL EVENTS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.deepPurple[600],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'ABOUT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            'PARTNERS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'COACHES',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'CONTACT US',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'EVENTS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 14,
                            ),
                          ),
                          Text(
                            'TERMS AND CONDITIONS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'BLOGS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            'PRIVACY POLICY',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Image.asset(
                          'Asset/Images/tsim_logo.png',
                          height: 100.0,
                          width: 200.0,
                        ),
                        padding: EdgeInsets.only(left: 2.0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Text(
                          '© Copyright 2019 thestarinme.com | All Rights Reserved',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: FaIcon(FontAwesomeIcons.facebookF),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: FaIcon(FontAwesomeIcons.twitter),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: FaIcon(FontAwesomeIcons.linkedinIn),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: FaIcon(FontAwesomeIcons.instagram),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
