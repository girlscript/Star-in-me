import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:star_in_me_app/user_profile/accomplishments/certification.dart';
import 'package:star_in_me_app/user_profile/accomplishments/education.dart';
import 'package:star_in_me_app/user_profile/accomplishments/work_exp.dart';

class Publication extends StatefulWidget {
  static final String publicationId = '/publication';
  @override
  _PublicationState createState() => _PublicationState();
}

class _PublicationState extends State<Publication> {
  final _formKey = GlobalKey<FormState>();
  int selectedRadio;
  final titleController = TextEditingController();
  final publisherController = TextEditingController();
  final authorController = TextEditingController();
  final publicationUrlController = TextEditingController();
  final publicationDateController = TextEditingController();
  final descriptionController = TextEditingController();

  String title,
      publisher,
      authors,
      publicationUrl,
      publicationDate,
      description;

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
                        'Add Publication',
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
                        onPressed: () {
                          Navigator.pushNamed(context, WorkExperience.workExperienceId);
                        },
                        child: SvgPicture.asset(
                          'images/Job_line.svg',
                          height: 45.0,
                          width: 45.0,
                        ),
                        shape: CircleBorder(),
                        // color: Colors.purple,
                      ),
                      FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Education.educationId);
                          },
                          child: SvgPicture.asset(
                            'images/Education-line.svg',
                            height: 45.0,
                            width: 45.0,
                          )),
                      FlatButton(
                          onPressed: null,
                          child: SvgPicture.asset(
                            'images/Certification-Line.svg',
                            height: 45.0,
                            width: 45.0,
                          )),
                      FlatButton(
                          onPressed: null,
                          child: SvgPicture.asset(
                            'images/Awards_line.svg',
                            height: 45.0,
                            width: 45.0,
                          )),
                    ],
                  ),
                ),
                Row(
                    children: [
                      Expanded(
                          child: RadioListTile(
                            value: 1,
                            groupValue: selectedRadio,
                            title: Text('Certification'),
                            activeColor: Color.fromRGBO(79, 67, 154, 1),
                            onChanged: (int value) {
                              setSelectedRadio(value);
                              setState(() {
                                navigateToPage = true;
                              });
                              if (navigateToPage) {
                                 Navigator.pushNamed(context, Certification.certificationId);
                              }
                            },
                            selected: selectedRadio == 1,
                          )),
                      Expanded(
                        child: RadioListTile(
                          value: 2,
                          groupValue: selectedRadio,
                          title: Text('Publication'),
                          activeColor: Color.fromRGBO(79, 67, 154, 1),
                          onChanged: (int value) {
                            setSelectedRadio(value);

                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          value: 3,
                          groupValue: selectedRadio,
                          title: Text('Patent'),
                          activeColor: Color.fromRGBO(79, 67, 154, 1),
                          onChanged: (int value) {
                            setSelectedRadio(value);
                            setState(() {
                              navigateToPage = true;
                            });
                            if (navigateToPage) {
                              // Navigator.pushNamed(context, Volunteer.volunteerId);
                            }
                          },
                        ),
                      )
                    ]),
                SizedBox(height: 14,),
                Container(
                  width: 380.0,
                  height: 40,
                  child: TextFormField(
                    enableSuggestions: true,
                    controller: titleController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Title";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      title = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Title*",
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
                    controller: publisherController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      publisher = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Publisher",
                      border: const OutlineInputBorder(),
                    ),
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
                    controller: authorController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      authors = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Authors",
                      border: const OutlineInputBorder(),
                    ),
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
                    controller: publicationUrlController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      publicationUrl= value;
                    },
                    decoration: InputDecoration(
                      labelText: "Publication URL",
                      border: const OutlineInputBorder(),
                    ),
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
                    controller: publicationDateController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      publicationDate = value;
                    },
                    decoration: InputDecoration(
                        labelText: "Publication Date",
                        border: const OutlineInputBorder(),
                        suffixIcon:
                        Icon(Icons.calendar_today_outlined)),
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
                SizedBox(height: 15,),
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
                  height: 110,
                )
              ])
            ])));
  }
}
