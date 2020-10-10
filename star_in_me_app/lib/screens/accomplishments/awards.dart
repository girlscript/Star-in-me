import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:star_in_me_app/screens/UserProfile.dart';
import 'package:star_in_me_app/screens/accomplishments/accomplishments_button.dart';

class Awards extends StatefulWidget {
  static final String awardsId = '/awards';
  @override
  _AwardsState createState() => _AwardsState();
}

class _AwardsState extends State<Awards> {
  final db = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final issuerController = TextEditingController();
  final issueDateController = TextEditingController();
  final descriptionController = TextEditingController();

  List<FocusNode> _focusNode;
  bool navigateToPage = false;
  @override
  void initState() {
    super.initState();
    _focusNode = new List(6);
    _focusNode[0] = FocusNode();
    _focusNode[1] = FocusNode();
    _focusNode[2] = FocusNode();
    _focusNode[3] = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child: ListView(children: [
              Column(children: [
                Padding(
                  padding: EdgeInsets.only(left: 331.0, right: 19.0, top: 30.0),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, UserProfile.userProfileId);
                      },
                      child: SvgPicture.asset(
                        "images/Cancel_line.svg",
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Add Honors & Awards',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: AccomplishmentButtons(
                      work: 'images/Job_line.svg',
                      education: 'images/Education-line.svg',
                      certification: 'images/Certification-Line.svg',
                      awards: 'images/Awards-fill.svg',
                    )),
                SizedBox(
                  height: 53,
                ),
                Container(
                  width: 380.0,
                  height: 60,
                  child: TextFormField(
                    focusNode: _focusNode[0],
                    enableSuggestions: true,
                    controller: titleController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Your Honor/Award Title";
                      }
                      return null;
                    },
                    onTap: () {
                      setState(() {
                        FocusScope.of(context).requestFocus(_focusNode[0]);
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Honor/Award Title *",
                      labelStyle: TextStyle(
                          color: _focusNode[0].hasFocus
                              ? Color.fromRGBO(79, 67, 154, 1)
                              : Colors.grey),
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(79, 67, 154, 1))),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 380.0,
                  height: 60,
                  child: TextFormField(
                    focusNode: _focusNode[1],
                    enableSuggestions: true,
                    controller: issuerController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onTap: () {
                      setState(() {
                        FocusScope.of(context).requestFocus(_focusNode[1]);
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Issuer",
                      labelStyle: TextStyle(
                          color: _focusNode[1].hasFocus
                              ? Color.fromRGBO(79, 67, 154, 1)
                              : Colors.grey),
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(79, 67, 154, 1))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 380.0,
                  height: 60,
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(primaryColor: Color.fromRGBO(79, 67, 154, 1)),
                    child: TextFormField(
                      focusNode: _focusNode[2],
                      enableSuggestions: true,
                      controller: issueDateController,
                      keyboardType: TextInputType.text,
                      keyboardAppearance: Brightness.dark,
                      onTap: () {
                        setState(() {
                          FocusScope.of(context).requestFocus(_focusNode[2]);
                        });
                      },
                      decoration: InputDecoration(
                          labelText: "Issue Date",
                          labelStyle: TextStyle(
                              color: _focusNode[2].hasFocus
                                  ? Color.fromRGBO(79, 67, 154, 1)
                                  : Colors.grey),
                          border: const OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(79, 67, 154, 1))),
                          suffixIcon: Icon(Icons.calendar_today)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 380.0,
                  height: 60,
                  child: TextFormField(
                    focusNode: _focusNode[3],
                    enableSuggestions: true,
                    controller: descriptionController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onTap: () {
                      setState(() {
                        FocusScope.of(context).requestFocus(_focusNode[3]);
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Description",
                      labelStyle: TextStyle(
                          color: _focusNode[3].hasFocus
                              ? Color.fromRGBO(79, 67, 154, 1)
                              : Colors.grey),
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(79, 67, 154, 1))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 380,
                  height: 40,
                  color: Color.fromRGBO(79, 67, 154, 1),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        await db.collection("awards").add({
                          'award_title': titleController.text,
                          'issuer': issuerController.text,
                          'issue_date': issueDateController.text,
                          'description': descriptionController.text
                        });
                        Navigator.pushNamed(context, UserProfile.userProfileId);
                      }
                    },
                    color: Color.fromRGBO(79, 67, 154, 1),
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 210,
                )
              ])
            ])));
  }
}
