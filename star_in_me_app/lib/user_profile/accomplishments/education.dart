import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:star_in_me_app/user_profile/accomplishments/certification.dart';
import 'package:star_in_me_app/user_profile/accomplishments/work_exp.dart';

import 'awards.dart';

class Education extends StatefulWidget {
  static final String educationId = '/education';
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
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
                  child: Row(
                    children: [
                      FlatButton(
                        onPressed: (){
                          Navigator.pushNamed(context, WorkExperience.workExperienceId);
                        },
                        child: SvgPicture.asset(
                          'images/Job_line.svg',
                          height: 45.0,
                          width: 45.0,
                        ),
                        shape: CircleBorder(),
                      ),
                      FlatButton(
                          onPressed: null,
                          child: SvgPicture.asset(
                            'images/Education-line.svg',
                            height: 45.0,
                            width: 45.0,
                          )),
                      FlatButton(
                          onPressed: (){
                            Navigator.pushNamed(context, Certification.certificationId);
                          },
                          child: SvgPicture.asset(
                            'images/Certification-Line.svg',
                            height: 45.0,
                            width: 45.0,
                          )),
                      FlatButton(
                          onPressed: (){
                            Navigator.pushNamed(context, Awards.awardsId);
                          },
                          child: SvgPicture.asset(
                            'images/Awards_line.svg',
                            height: 45.0,
                            width: 45.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 53,),
                Container(
                  width: 380.0,
                  height: 40,
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
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 380.0,
                  height: 40,
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
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 380.0,
                  height: 40,
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
                      border: const OutlineInputBorder(),
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
                        height: 40,
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
                              border: const OutlineInputBorder(),
                              suffixIcon:
                              Icon(Icons.calendar_today_outlined)),
                        ),
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Container(
                        width: 185.0,
                        height: 40,
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
                              border: const OutlineInputBorder(),
                              suffixIcon:
                              Icon(Icons.calendar_today_outlined)),
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
                  height: 40,
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
                      border: const OutlineInputBorder(),
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
                    onPressed: null,
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
