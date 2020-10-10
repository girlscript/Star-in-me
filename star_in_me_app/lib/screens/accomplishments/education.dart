import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:star_in_me_app/screens/UserProfile.dart';
import 'package:star_in_me_app/screens/accomplishments/accomplishments_button.dart';
import 'package:star_in_me_app/screens/accomplishments/certification.dart';

class Education extends StatefulWidget {
  static final String educationId = '/education';
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  final db = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();
  final schoolController = TextEditingController();
  final degreeController = TextEditingController();
  final studyController = TextEditingController();
  final descriptionController = TextEditingController();
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();

  List<FocusNode> _focusNode;
  bool _isChecked = false;
  @override
  void initState() {
    super.initState();
    _focusNode = new List(6);
    _focusNode[0] = FocusNode();
    _focusNode[1] = FocusNode();
    _focusNode[2] = FocusNode();
    _focusNode[3] = FocusNode();
    _focusNode[4] = FocusNode();
    _focusNode[5] = FocusNode();
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
                        'Add Education',
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
                      education: 'images/Education-line-fill.svg',
                      certification: 'images/Certification-Line.svg',
                      awards: 'images/Awards_line.svg',
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
                    controller: schoolController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Your School";
                      }
                      return null;
                    },
                    onTap: () {
                      setState(() {
                        FocusScope.of(context).requestFocus(_focusNode[0]);
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "School/College/Institute *",
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
                    controller: degreeController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onTap: () {
                      setState(() {
                        FocusScope.of(context).requestFocus(_focusNode[1]);
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Degree",
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
                SizedBox(height: 10),
                Container(
                  width: 380.0,
                  height: 60,
                  child: TextFormField(
                    focusNode: _focusNode[2],
                    enableSuggestions: true,
                    controller: studyController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onTap: () {
                      setState(() {
                        FocusScope.of(context).requestFocus(_focusNode[2]);
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Field of Study",
                      labelStyle: TextStyle(
                          color: _focusNode[2].hasFocus
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
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 185.0,
                        height: 60,
                        child: Theme(
                          data: Theme.of(context).copyWith(
                              primaryColor: Color.fromRGBO(79, 67, 154, 1)),
                          child: TextFormField(
                            focusNode: _focusNode[3],
                            enableSuggestions: true,
                            controller: startDateController,
                            keyboardType: TextInputType.text,
                            keyboardAppearance: Brightness.dark,
                            onTap: () {
                              setState(() {
                                FocusScope.of(context)
                                    .requestFocus(_focusNode[3]);
                              });
                            },
                            decoration: InputDecoration(
                                labelText: "Start Date",
                                labelStyle: TextStyle(
                                    color: _focusNode[3].hasFocus
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
                        width: 11,
                      ),
                      Container(
                        width: 185.0,
                        height: 60,
                        child: Theme(
                          data: Theme.of(context).copyWith(
                              primaryColor: Color.fromRGBO(79, 67, 154, 1)),
                          child: TextFormField(
                            focusNode: _focusNode[4],
                            enabled: !_isChecked,
                            enableSuggestions: true,
                            controller: endDateController,
                            keyboardType: TextInputType.text,
                            keyboardAppearance: Brightness.dark,
                            onTap: () {
                              setState(() {
                                FocusScope.of(context)
                                    .requestFocus(_focusNode[4]);
                              });
                            },
                            decoration: InputDecoration(
                                labelText: "End Date",
                                labelStyle: TextStyle(
                                    color: _focusNode[4].hasFocus
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 380.0,
                  height: 60,
                  child: TextFormField(
                    focusNode: _focusNode[5],
                    enableSuggestions: true,
                    controller: descriptionController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onTap: () {
                      setState(() {
                        FocusScope.of(context).requestFocus(_focusNode[5]);
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Description",
                      labelStyle: TextStyle(
                          color: _focusNode[5].hasFocus
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
                  height: 11,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Container(
                        width: 147,
                        height: 40,
                        child: OutlineButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'images/Add-Fill-color.svg',
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'ADD MEDIA',
                                style: TextStyle(
                                  color: Color.fromRGBO(79, 67, 154, 1),
                                ),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          borderSide:
                              BorderSide(color: Color.fromRGBO(79, 67, 154, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Theme(
                      data: ThemeData(
                          unselectedWidgetColor:
                              Color.fromRGBO(79, 67, 154, 1)),
                      child: Checkbox(
                        value: _isChecked,
                        tristate: false,
                        onChanged: (bool isChecked) {
                          setState(() {
                            _isChecked = isChecked;
                          });
                        },
                      ),
                    ),
                    Text(
                      'Add as a highlight',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
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
                        await db.collection("education").add({
                          'school': schoolController.text,
                          'degree': descriptionController.text,
                          'field_of_study': studyController.text,
                          'start_date': startDateController.text,
                          'end_date': endDateController.text,
                          'description': descriptionController.text,
                          'highlight': _isChecked
                        });
                        Navigator.pushNamed(
                            context, Certification.certificationId);
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
                  height: 68,
                )
              ])
            ])));
  }
}
