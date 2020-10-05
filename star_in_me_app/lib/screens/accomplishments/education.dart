import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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

  String school, degree, study, description, startDate, endDate;
  bool _isChecked = false;
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
                        'Add Education',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: AccomplishmentButtons()
                ),
                SizedBox(height: 53,),
                Container(
                  width: 380.0,
                  height: 60,
                  child: TextFormField(
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
                    onChanged: (value) {
                      school = value;
                    },
                    decoration: InputDecoration(
                      labelText: "School/College/Institute *",
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
                    controller: degreeController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      degree = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Degree",
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
                    controller: studyController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                     study = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Field of Study",
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
                                suffixIcon:
                                Icon(Icons.calendar_today_outlined)),
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
                          borderSide: BorderSide(color: Color.fromRGBO(79, 67, 154, 1)),
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
                      data: ThemeData(unselectedWidgetColor: Color.fromRGBO(79, 67, 154, 1)),
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
                      if(_formKey.currentState.validate()){
                        await db.collection("education").add({
                          'school':schoolController.text,
                          'degree':descriptionController.text,
                          'field_of_study':studyController.text,
                          'start_date':startDateController.text,
                          'end_date':endDateController.text,
                          'description':descriptionController.text
                        });
                        Navigator.pushNamed(context, Certification.certificationId);
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
