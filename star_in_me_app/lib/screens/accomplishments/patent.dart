import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:star_in_me_app/screens/accomplishments/accomplishments_button.dart';
import 'package:star_in_me_app/screens/accomplishments/awards.dart';
import 'package:star_in_me_app/screens/accomplishments/certification.dart';
import 'package:star_in_me_app/screens/accomplishments/patent_pending.dart';
import 'package:star_in_me_app/screens/accomplishments/publication.dart';



class Patent extends StatefulWidget {
  static final String patentId = '/patent';
  @override
  _PatentState createState() => _PatentState();
}

class _PatentState extends State<Patent> {
  final db = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();
  int selectedRadio;
  final titleController = TextEditingController();
  final officeController = TextEditingController();
  final numberController = TextEditingController();
  final issueDateController = TextEditingController();
  final descriptionController = TextEditingController();

  String title,
  office,
  number,
      issueDate,
      description;
  bool _isChecked = false;
  bool navigateToPage = false;
  @override
  void initState() {
    super.initState();
    selectedRadio = 3;
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
                        'Add Patent',
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
                SizedBox(height: 19,),
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
                                Navigator.pushNamed(context, Certification.certificationId);
                              }
                            },
                            activeColor: Color.fromRGBO(79, 67, 154, 1),
                          ),
                        ),
                        Text(
                          'Certification',
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
                              setState(() {
                                navigateToPage = true;
                              });
                              if (navigateToPage) {
                                Navigator.pushNamed(
                                    context, Publication.publicationId);
                              }
                            },
                            activeColor: Color.fromRGBO(79, 67, 154, 1),
                          ),
                        ),
                        Text(
                          'Publication',
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
                            value: 3,
                            groupValue: selectedRadio,
                            onChanged: (int value) {
                              setSelectedRadio(value);

                            },
                            activeColor: Color.fromRGBO(79, 67, 154, 1),
                          ),
                        ),
                        Text(
                          'Patent',
                          style: TextStyle(color:  Color.fromRGBO(79, 67, 154, 1)),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Theme(
                      data: ThemeData(unselectedWidgetColor: Color.fromRGBO(79, 67, 154, 1),
                      ),
                      child: Checkbox(
                        value: _isChecked,
                        tristate: false,
                        onChanged: (bool isChecked) {
                          setState(() {
                            _isChecked = isChecked;
                          });
                          Navigator.pushNamed(context, PatentPending.patenPendingtId);
                        },
                        checkColor: Color.fromRGBO(79, 67, 154, 1),
                        activeColor: Color.fromRGBO(79, 67, 154, 1),
                      ),
                    ),
                    Text(
                      'Pending',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 18,),
                Container(
                  width: 380.0,
                  height: 60,
                  child: TextFormField(
                    enableSuggestions: true,
                    controller: titleController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Your Patent Title";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      title = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Patent Title *",
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
                    controller: officeController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      office = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Patent Office",
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
                Container(
                  width: 380.0,
                  height: 60,
                  child: TextFormField(
                    enableSuggestions: true,
                    controller: numberController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      number = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Patent Number",
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
                Container(
                  width: 380.0,
                  height: 60,
                  child: Theme(
                    data: Theme.of(context).copyWith(primaryColor: Color.fromRGBO(79, 67, 154, 1)),
                    child: TextFormField(
                      enableSuggestions: true,
                      controller: issueDateController,
                      keyboardType: TextInputType.text,
                      keyboardAppearance: Brightness.dark,
                      onChanged: (value) {
                        issueDate = value;
                      },
                      decoration: InputDecoration(
                          labelText: "Issue Date",
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
                      labelText: "Description (Mention Patent URL,Etc)",
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
                SizedBox(height: 15,),
                Container(
                  width: 380,
                  height: 40,
                  color: Color.fromRGBO(79, 67, 154, 1),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () async {
                      if(_formKey.currentState.validate()){
                        await db.collection("patent").add({
                        'patent_title':titleController.text,
                          'patent_office':officeController.text,
                          'patent_number':numberController.text,
                          'issue_date':issueDateController.text,
                          'description':descriptionController.text
                        });
                        Navigator.pushNamed(context, Awards.awardsId);
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
                  height: 120,
                )
              ])
            ])));
  }
}
