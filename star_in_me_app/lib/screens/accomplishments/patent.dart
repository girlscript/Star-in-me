import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:star_in_me_app/screens/accomplishments/publication.dart';

import 'accomplishments_button.dart';
import 'certification.dart';


class Patent extends StatefulWidget {
  static final String patentId = '/patent';
  @override
  _PatentState createState() => _PatentState();
}

class _PatentState extends State<Patent> {
  final _formKey = GlobalKey<FormState>();
  int selectedRadio;
  final titleController = TextEditingController();
  final officeController = TextEditingController();
  final numberController = TextEditingController();
  final publicationDateController = TextEditingController();
  final descriptionController = TextEditingController();

  String title,
  office,
  number,
      publicationDate,
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
                            }
                          )),
                      Expanded(
                        child: RadioListTile(
                          value: 2,
                          groupValue: selectedRadio,
                          title: Text('Publication'),
                          activeColor: Color.fromRGBO(79, 67, 154, 1),
                          onChanged: (int value) {
                            setSelectedRadio(value);
                            setState(() {
                              navigateToPage = true;
                            });
                            if (navigateToPage) {
                              Navigator.pushNamed(context, Publication.publicationId);
                            }
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

                          },
                        ),
                      )
                    ]),
                SizedBox(height: 16,),
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
                          // Navigator.pushNamed(context, PatentPending.patenPendingtId);
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
                  height: 40,
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
                    controller: officeController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      office = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Patent Office",
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
                    controller: numberController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      number = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Patent Number",
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
                      labelText: "Description (Mention Patent URL,Etc)",
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
                  height: 120,
                )
              ])
            ])));
  }
}
