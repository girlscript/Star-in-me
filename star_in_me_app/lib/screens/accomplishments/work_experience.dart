import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:star_in_me_app/screens/UserProfile.dart';
import 'package:star_in_me_app/screens/accomplishments/accomplishments_button.dart';
import 'package:star_in_me_app/screens/accomplishments/education.dart';
import 'package:star_in_me_app/screens/accomplishments/volunteer.dart';

class WorkExperience extends StatefulWidget {
  static final String workExperienceId = '/workExperience';

  @override
  _WorkExperienceState createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  final db = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();
  int selectedRadio;
  final designationController = TextEditingController();
  final organisationController = TextEditingController();
  final industryController = TextEditingController();
  final locationController = TextEditingController();
  final descriptionController = TextEditingController();
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();
  List<FocusNode> _focusNode;

  bool _isChecked = false;
  bool navigateToPage = false;

  @override
  void initState() {
    super.initState();
    selectedRadio = 1;
    _focusNode = new List(7);
    _focusNode[0] = FocusNode();
    _focusNode[1] = FocusNode();
    _focusNode[2] = FocusNode();
    _focusNode[3] = FocusNode();
    _focusNode[4] = FocusNode();
    _focusNode[5] = FocusNode();
    _focusNode[6] = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _formKey,
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 331.0, right: 19.0, top: 30.0),
                    child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, UserProfile.userProfileId);
                        },
                        child: SvgPicture.asset(
                          "images/Cancel_line.svg",
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Add Work Experience',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        )),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: AccomplishmentButtons()),
                  Row(
                    children: [
                      Row(
                        children: [
                          Theme(
                            data: ThemeData(
                                unselectedWidgetColor:
                                    Color.fromRGBO(79, 67, 154, 1)),
                            child: Radio(
                              value: 1,
                              groupValue: selectedRadio,
                              onChanged: (int value) {
                                setSelectedRadio(value);
                              },
                              activeColor: Color.fromRGBO(79, 67, 154, 1),
                            ),
                          ),
                          Text(
                            'Work',
                            style: TextStyle(
                                color: Color.fromRGBO(79, 67, 154, 1)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Theme(
                            data: ThemeData(
                                unselectedWidgetColor:
                                    Color.fromRGBO(79, 67, 154, 1)),
                            child: Radio(
                              value: 2,
                              groupValue: selectedRadio,
                              onChanged: (int value) {
                                setSelectedRadio(value);
                                setState(() {
                                  navigateToPage = true;
                                });
                                if (navigateToPage) {
                                  Navigator.pushNamed(
                                      context, Volunteer.volunteerId);
                                }
                              },
                              activeColor: Color.fromRGBO(79, 67, 154, 1),
                            ),
                          ),
                          Text(
                            'Volunteer',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 380.0,
                    height: 60,
                    child: TextFormField(
                      focusNode: _focusNode[0],
                      enableSuggestions: true,
                      controller: designationController,
                      keyboardType: TextInputType.text,
                      keyboardAppearance: Brightness.dark,
                      onTap: () {
                        setState(() {
                          FocusScope.of(context).requestFocus(_focusNode[0]);
                        });
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Your Designation/Job Position";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Designation/Job Position *",
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
                      controller: organisationController,
                      keyboardType: TextInputType.text,
                      keyboardAppearance: Brightness.dark,
                      onTap: () {
                        setState(() {
                          FocusScope.of(context).requestFocus(_focusNode[1]);
                        });
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Your Organisation/Company";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Organisation/Company *",
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
                    child: TextFormField(
                      focusNode: _focusNode[2],
                      enableSuggestions: true,
                      controller: industryController,
                      keyboardType: TextInputType.text,
                      keyboardAppearance: Brightness.dark,
                      onTap: () {
                        setState(() {
                          FocusScope.of(context).requestFocus(_focusNode[2]);
                        });
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter Your Industry";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Industry *",
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 380.0,
                    height: 60,
                    child: TextFormField(
                      focusNode: _focusNode[3],
                      enableSuggestions: true,
                      controller: locationController,
                      keyboardType: TextInputType.text,
                      keyboardAppearance: Brightness.dark,
                      onTap: () {
                        setState(() {
                          FocusScope.of(context).requestFocus(_focusNode[3]);
                        });
                      },
                      decoration: InputDecoration(
                        labelText: "Location",
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
                    height: 10,
                  ),
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
                              focusNode: _focusNode[4],
                              enableSuggestions: true,
                              controller: startDateController,
                              keyboardType: TextInputType.datetime,
                              keyboardAppearance: Brightness.dark,
                              onTap: () {
                                setState(() {
                                  FocusScope.of(context)
                                      .requestFocus(_focusNode[4]);
                                });
                              },
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Enter Start Date";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  labelText: "Start Date *",
                                  labelStyle: TextStyle(
                                      color: _focusNode[4].hasFocus
                                          ? Color.fromRGBO(79, 67, 154, 1)
                                          : Colors.grey),
                                  border: const OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(79, 67, 154, 1))),
                                  suffixIcon:
                                      Icon(Icons.calendar_today_outlined)),
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
                              enabled: !_isChecked,
                              focusNode: _focusNode[5],
                              enableSuggestions: true,
                              controller: endDateController,
                              keyboardType: TextInputType.datetime,
                              keyboardAppearance: Brightness.dark,
                              onTap: () {
                                setState(() {
                                  FocusScope.of(context)
                                      .requestFocus(_focusNode[5]);
                                });
                              },
                              validator: (value) {
                                if (value.isEmpty && !_isChecked) {
                                  return "Enter End Date";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: "End Date *",
                                labelStyle: TextStyle(
                                    color: _focusNode[5].hasFocus
                                        ? Color.fromRGBO(79, 67, 154, 1)
                                        : Colors.grey),
                                border: const OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(79, 67, 154, 1))),
                                suffixIcon: Icon(Icons.calendar_today_outlined),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 19,
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
                        'Currently Working',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    width: 380.0,
                    height: 60,
                    child: TextFormField(
                      focusNode: _focusNode[6],
                      enableSuggestions: true,
                      controller: descriptionController,
                      keyboardType: TextInputType.text,
                      keyboardAppearance: Brightness.dark,
                      onTap: () {
                        setState(() {
                          FocusScope.of(context).requestFocus(_focusNode[6]);
                        });
                      },
                      decoration: InputDecoration(
                        labelText: "Description",
                        labelStyle: TextStyle(
                            color: _focusNode[6].hasFocus
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
                            borderSide: BorderSide(
                                color: Color.fromRGBO(79, 67, 154, 1)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
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
                          await db.collection("work").add({
                            'designation': designationController.text,
                            'organisation': organisationController.text,
                            'location': locationController.text,
                            'industry': industryController.text,
                            'description': descriptionController.text,
                            'startDate': startDateController.text,
                            'endDate': endDateController.text,
                            'currently_working': _isChecked
                          });
                          Navigator.pushNamed(context, Education.educationId);
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
                    height: 46,
                  )
                ],
              ),
            ],
          )),
    );
  }
}
