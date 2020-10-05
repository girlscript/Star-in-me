import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:star_in_me_app/screens/accomplishments/accomplishments_button.dart';
import 'package:star_in_me_app/screens/accomplishments/education.dart';
import 'package:star_in_me_app/screens/accomplishments/work_experience.dart';

class Volunteer extends StatefulWidget {
  static final String volunteerId = '/volunteer';
  @override
  _VolunteerState createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
  final db = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();
  final organisationController = TextEditingController();
  final volunteerController = TextEditingController();
  final causeController = TextEditingController();
  final locationController = TextEditingController();
  final descriptionController = TextEditingController();
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();
  String organisation,
      volunteer,
      cause,
      location,
      description,
      startDate,
      endDate;
  bool _isChecked = false;
  int selectedRadio;
  bool navigateToPage = false;
  @override
  void initState() {
    super.initState();
    selectedRadio = 2;
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
            child: ListView(children: [
              Column(children: [
                Padding(
                  padding: EdgeInsets.only(left: 331.0, right: 19.0, top: 30.0),
                  child: FlatButton(
                      onPressed: null,
                      child: SvgPicture.asset(
                        "images/Cancel_line.svg",
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Add Volunteer Experience',
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
                              setState(() {
                                navigateToPage = true;
                              });
                              if (navigateToPage) {
                                Navigator.pushNamed(
                                    context, WorkExperience.workExperienceId);
                              }
                            },
                            activeColor: Color.fromRGBO(79, 67, 154, 1),
                          ),
                        ),
                        Text(
                          'Work',
                          style: TextStyle(color: Colors.grey),
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
                            },
                            activeColor: Color.fromRGBO(79, 67, 154, 1),
                          ),
                        ),
                        Text(
                          'Volunteer',
                          style: TextStyle(color: Color.fromRGBO(79, 67, 154, 1)),
                        ),
                      ],
                    ),

                  ],
                ),
                Container(
                  width: 380.0,
                  height: 60,
                  child: TextFormField(
                    enableSuggestions: true,
                    controller: organisationController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Your Organisation/Company";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      organisation = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Organisation/Company *",
                      labelStyle:TextStyle(
                          color: Colors.grey
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(79, 67, 154, 1)
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 380.0,
                  height: 60,
                  child: TextFormField(
                    enableSuggestions: true,
                    controller: volunteerController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      volunteer = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Volunteer Role",
                      labelStyle:TextStyle(
                          color: Colors.grey
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(79, 67, 154, 1)
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 380.0,
                  height: 60,
                  child: TextFormField(
                    enableSuggestions: true,
                    controller: causeController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      cause = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Cause",
                      labelStyle:TextStyle(
                          color: Colors.grey
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(79, 67, 154, 1)
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 380.0,
                  height: 60,
                  child: TextFormField(
                    enableSuggestions: true,
                    controller: locationController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      location = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Location",
                      labelStyle:TextStyle(
                          color: Colors.grey
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(79, 67, 154, 1)
                          )
                      ),
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
                          data: Theme.of(context).copyWith(primaryColor: Color.fromRGBO(79, 67, 154, 1)),
                          child: TextFormField(
                            enableSuggestions: true,
                            controller: startDateController,
                            keyboardType: TextInputType.text,
                            keyboardAppearance: Brightness.dark,
                            onChanged: (value) {
                              startDate = value;
                            },
                            decoration: InputDecoration(
                                labelText: "Start Date",
                                labelStyle:TextStyle(
                                    color: Colors.grey
                                ),
                                border: const OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(79, 67, 154, 1)
                                    )
                                ),
                                suffixIcon: Icon(Icons.calendar_today_outlined)),
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
                          data: Theme.of(context).copyWith(primaryColor: Color.fromRGBO(79, 67, 154, 1)),
                          child: TextFormField(
                            enableSuggestions: true,
                            controller: endDateController,
                            keyboardType: TextInputType.text,
                            keyboardAppearance: Brightness.dark,
                            onChanged: (value) {
                              endDate = value;
                            },
                            decoration: InputDecoration(
                                labelText: "End Date",
                                labelStyle:TextStyle(
                                    color: Colors.grey
                                ),
                                border: const OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(79, 67, 154, 1)
                                    )
                                ),
                                suffixIcon: Icon(Icons.calendar_today_outlined)),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                    enableSuggestions: true,
                    controller: descriptionController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      description = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Description",
                      labelStyle:TextStyle(
                          color: Colors.grey
                      ),
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(79, 67, 154, 1)
                          )
                      ),
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
                      if(_formKey.currentState.validate()){
                        await db.collection("volunteer").add({
                          'organisation':organisationController.text,
                          'volunteer_role':volunteerController.text,
                          'cause':causeController.text,
                          'location':locationController.text,
                          'start_date':startDateController.text,
                          'end_date':endDateController.text,
                          'description':descriptionController.text
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
              ]),
            ])));
  }
}
