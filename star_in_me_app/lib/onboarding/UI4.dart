import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:star_in_me_app/onboarding/UI5.dart';
import 'package:star_in_me_app/onboarding/imageupload.dart';

class UI4 extends StatelessWidget {
  static final onboardingUi4 = '/onboardingUI4';

  final TextEditingController collegeController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController designationController = TextEditingController();
  final TextEditingController linkedInController = TextEditingController();

  String organizationName, mailId, designation, linkedInProfile;
  final _formKey = GlobalKey<FormState>();
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[500],
        leading: Container(
          margin: EdgeInsets.all(10.0),
          // padding: const EdgeInsets.all(10.0),
          child: Image(
            image: AssetImage("images/logo.png"),
          ),
        ),
        elevation: 15,
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Text(
              "STEP 1",
              style: TextStyle(
                  color: Colors.deepPurple[500],
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              // color: Colors.white,
              // padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Let's Complete your profile ",
                    style: TextStyle(
                      color: Colors.deepPurple[500],
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  //),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 10.0, left: 22.0),
                  //   child:
                  //Expanded(
                  //flex: 1,
                  //child:
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      "This will help us know your professional experience for connections.",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                    child: TextFormField(
                      controller: collegeController,
                      maxLines: 1,
                      cursorColor: Colors.deepPurple[500],
                      keyboardType: TextInputType.text,
                      autofocus: false,
                      decoration: InputDecoration(
                          labelText: 'College/Company/Organization',
                          labelStyle: TextStyle(
                              color: Colors.deepPurple[500],
                              fontSize: 16.0
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.deepPurple[500]
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                color: Colors.deepPurple[500],
                                //width: 2.0
                              )
                          )
                      ),
                      onChanged: (value) {
                        organizationName = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Your Organization Name";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                    child: TextFormField(
                      controller: mailController,
                      maxLines: 1,
                      cursorColor: Colors.deepPurple[500],
                      keyboardType: TextInputType.text,
                      autofocus: false,
                      decoration: InputDecoration(
                          labelText: 'pratiksha.g@xelp.com',
                          labelStyle: TextStyle(
                              color: Colors.deepPurple[500],
                              fontSize: 16.0
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.deepPurple[500]
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide())),
                      onChanged: (value) {
                        mailId = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Your Email ID";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                    child: TextFormField(
                      controller: designationController,
                      cursorColor: Colors.deepPurple[500],
                      maxLines: 1,
                      keyboardType: TextInputType.text,
                      autofocus: false,
                      decoration: InputDecoration(
                          labelText: 'Designation',
                          labelStyle: TextStyle(
                              color: Colors.deepPurple[500],
                              fontSize: 16.0
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                color: Colors.deepPurple[500],
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide())),
                      onChanged: (value) {
                        designation = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Your Designation";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                    child: TextFormField(
                      controller: linkedInController,
                      maxLines: 1,
                      cursorColor: Colors.deepPurple[500],
                      keyboardType: TextInputType.text,
                      autofocus: false,
                      decoration: InputDecoration(
                          labelText: 'Linkedin Profile',
                          labelStyle: TextStyle(
                              color: Colors.deepPurple[500],
                              fontSize: 16.0
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.deepPurple[500]
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide())),
                      onChanged: (value) {
                        linkedInProfile = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Your LinkedIn Profile URL";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
                    child: Text(
                      "Upload a professional headshot",
                      style: TextStyle(
                        color: Colors.purple[300],
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
                    child: Text(
                      "Your picture is logo of your personal brand!",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 5),
                        Icon(
                          Icons.play_arrow,
                          size: 35.0,
                          color: Colors.deepPurple[500],
                        ),
                        SizedBox(width: 10),
                        Text(
                          'WATCH DEMO VIDEO',
                          style: TextStyle(
                              color: Colors.deepPurple[500],
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: double.infinity,
                    height: 50.0,
                    child: OutlineButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Image_Upload.imageupload);
                      },
                      child: Text(
                        "ADD PHOTO OR VIDEO",
                        style: TextStyle(
                            color: Colors.deepPurple[500], fontSize: 17.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.deepPurple[500],
                        width: 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
                    child: Text(
                      "You can upload upto 5 photos or videos",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 19.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Divider(thickness: 1),
                  ButtonTheme(
                    height: 50,
                    minWidth: 150,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: RaisedButton(
                      onPressed: () => uploadDetails(context),
                      child: Text("NEXT", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                      ),),
                      color: Colors.deepPurple[500],
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            )),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.grey,
      //   elevation: 30,
      //   child: Row(
      //     children: [
      //       SizedBox(),
      //       Center(
      //         child: FlatButton(
      //           color: Colors.blue,
      //           onPressed: () => print("Next Button pressed"),
      //           child: Text("NEXT"),
      //         ),
      //       ),
      //       SizedBox()
      //     ],
      //   ),
      // ),
    );
  }

  void uploadDetails(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      showSpinner = true;
      final snapshot = await FirebaseFirestore.instance.collection(
          "user_profile").doc(mailId).get();
      if (snapshot == null || snapshot.exists) {
        Navigator.pushNamed(context, UI5.onboardingUi5);
      }
      else {
        try {
          FirebaseFirestore.instance.collection("user_profile").add({
            "mail_id": mailId,
            "designation": designation,
            "organization": organizationName,
            "linked_in_profile": linkedInProfile
          });
          Fluttertoast.showToast(
              msg: "Data added successfully",
              gravity: ToastGravity.BOTTOM,
              toastLength: Toast.LENGTH_SHORT,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.deepPurple[500],
              fontSize: 16,
              textColor: Colors.white
          );
          Navigator.pushNamed(context, UI5.onboardingUi5);
        } catch (e) {
          print(e);
          Fluttertoast.showToast(
              msg: e.message,
              gravity: ToastGravity.BOTTOM,
              toastLength: Toast.LENGTH_SHORT,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.deepPurple[500],
              fontSize: 16,
              textColor: Colors.white
          );
        }
      }
    }
  }
}
