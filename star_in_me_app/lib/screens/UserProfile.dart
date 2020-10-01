import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:star_in_me_app/components/bottomnavigation.dart';
import 'package:star_in_me_app/components/header.dart';

class UserProfile extends StatefulWidget {
  static final String userProfileId = '/userprofile';
  @override
  State<StatefulWidget> createState() {
    return _UserProfile();
  }
}

var stringdata = [
  "TYPOGRAPHY",
  "BRAND IDENTITY",
  "VISUAL STRATEGY",
  "STORY BOARDING",
  "DESIGN MANAGEMENT"
];
var milestones = [
  {
    "title": "Onboarded",
    "subtitle": "Joined The star in me",
  },
  {
    "title": "Add a Milestone",
    "subtitle": "",
  }
];

class _UserProfile extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Header(),
        bottomNavigationBar: BottomNavigation(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    color: Color.fromRGBO(233, 233, 233, 1),
                  ),
                  Padding(
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12),
                      padding: EdgeInsets.all(20),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'UPLOAD PHOTO',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(212, 212, 212, 1)),
                              ),
                              Center(
                                child: Icon(
                                  Icons.person,
                                  size: 150,
                                  color: Color.fromRGBO(212, 212, 212, 1),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            Color.fromRGBO(212, 212, 212, 1)),
                                    child: Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            Color.fromRGBO(220, 220, 220, 1)),
                                    child: Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            Color.fromRGBO(220, 220, 220, 1)),
                                    child: Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            Color.fromRGBO(220, 220, 220, 1)),
                                    child: Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            Color.fromRGBO(220, 220, 220, 1)),
                                    child: Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                    padding: EdgeInsets.all(20),
                  ),
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 30, top: 5, bottom: 5, right: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Pratiksha Gupta",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.launch,
                        size: 15,
                      ),
                      onTap: () {
                        return null;
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 30, top: 5, bottom: 5, right: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Add Designation",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          color: Colors.purple),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: Icon(Icons.launch, size: 12),
                      onTap: () {
                        return null;
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 30, top: 5, bottom: 5, right: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Bengaluru, India",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: Icon(Icons.launch, size: 12),
                      onTap: () {
                        return null;
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                child: Row(
                  children: <Widget>[
                    Text("500+ Connections",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Expanded(child: SizedBox()),
                    GestureDetector(
                      child: Text("UPLOAD CV",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple)),
                      onTap: () {
                        return null;
                      },
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width - 60,
                    color: Colors.grey,
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Professional Summary",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.info_outline,
                              size: 12,
                            ),
                            onTap: () {
                              return null;
                            },
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Add Bio",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w200),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.launch,
                              size: 12,
                            ),
                            onTap: () {
                              return null;
                            },
                          )
                        ],
                      ),
                      TextField(
                        maxLines: 6,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w200),
                        decoration: InputDecoration(
                          hintText:
                              "(For Ex: A Human resources leader with over 18 years of experience across Talent management, HR Policy and Recruitment)\n\n\nWord limit: 100 words",
                          hintStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w200),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                onPressed: () {
                                  return null;
                                },
                                child: Center(
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Icon(
                                        Icons.present_to_all,
                                        size: 30,
                                        color: Colors.deepPurple,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Upload Video",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: RaisedButton(
                                onPressed: () {
                                  return null;
                                },
                                child: Center(
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Icon(
                                        Icons.present_to_all,
                                        size: 30,
                                        color: Colors.deepPurple,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Upload CV",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width - 60,
                    color: Colors.grey,
                  )),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Reach out to Pratiksha",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.info_outline,
                            size: 16,
                          ),
                          onTap: () {
                            return null;
                          },
                        )
                      ],
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      children: stringdata.map((e) => myChip(e)).toList(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FlatButton(
                        shape: new RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey)),
                        onPressed: () {
                          return null;
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Wrap(
                            children: <Widget>[
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffe0deed)),
                                child: Center(
                                  child: Icon(Icons.add,
                                      color: Color(0xff4f439a), size: 12),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "ADD EXPERTISE",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width - 60,
                    color: Colors.grey,
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Milestones",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Share your professional milestones and key achievements",
                        style: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 14),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children:
                              milestones.map((e) => milestone(e)).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width - 60,
                        color: Colors.grey,
                      ),
                      ListTile(
                          title: Text(
                            "Skills",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          trailing: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffe0deed)),
                            child: Center(
                              child: Icon(Icons.add,
                                  color: Color(0xff4f439a), size: 12),
                            ),
                          )),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width - 60,
                        color: Colors.grey,
                      ),
                      ListTile(
                          title: Text(
                            "Languages",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          trailing: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffe0deed)),
                            child: Center(
                              child: Icon(Icons.add,
                                  color: Color(0xff4f439a), size: 12),
                            ),
                          )),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width - 60,
                        color: Colors.grey,
                      ),
                      ListTile(
                          title: Text(
                            "Interests",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          trailing: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffe0deed)),
                            child: Center(
                              child: Icon(Icons.add,
                                  color: Color(0xff4f439a), size: 12),
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.deepPurple.shade200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: Text(
                        "Recent Activity",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.deepPurple.shade100,
                          hintText: "Start Posting now",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 30),
                child: Text(
                  "Pratiksha's professional journey",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Add Accomplishments",
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 14),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey)),
                            child: Center(
                              child: Icon(
                                Icons.school,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey)),
                            child: Center(
                                child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'images/certificate.png'))),
                            )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey)),
                            child: Center(
                                child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/award.png'))),
                            )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey)),
                            child: Center(
                                child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('images/office-bag.png'))),
                            )),
                          ),
                        ),
                      ],
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: Container(
                    height: 3,
                    width: MediaQuery.of(context).size.width - 60,
                    color: Colors.grey,
                  )),
              ListTile(
                contentPadding: EdgeInsets.all(30),
                leading: CircleAvatar(
                  child: Icon(Icons.add, size: 30),
                  foregroundColor: Color(0xff4f439a),
                  backgroundColor: Color(0xffe0deed),
                ),
                title: Text(
                  "Add recent job Description/Education/Achievement",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget myChip(String data) {
    return Padding(
      padding: EdgeInsets.only(right: 10, top: 10),
      child: Wrap(
        direction: Axis.horizontal,
        children: <Widget>[
          Text(
            data,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.deepPurple,
                decoration: TextDecoration.underline,
                decorationColor: Colors.deepPurple,
                decorationStyle: TextDecorationStyle.dotted),
          ),
          SizedBox(
            width: 2,
          ),
          Icon(
            Icons.cancel,
            color: Colors.deepPurple,
            size: 12,
          )
        ],
      ),
    );
  }

  Widget milestone(data) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.launch),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: CircleAvatar(
                  child: Center(
                    child: Icon(Icons.add, size: 30),
                  ),
                  foregroundColor: Color(0xff4f439a),
                  backgroundColor: Color(0xffe0deed),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                data['title'],
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
              Text(
                data['subtitle'],
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
