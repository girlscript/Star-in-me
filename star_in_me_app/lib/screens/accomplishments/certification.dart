import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:star_in_me_app/screens/UserProfile.dart';
import 'package:star_in_me_app/screens/accomplishments/accomplishments_button.dart';
import 'package:star_in_me_app/screens/accomplishments/awards.dart';
import 'package:star_in_me_app/screens/accomplishments/patent.dart';
import 'package:star_in_me_app/screens/accomplishments/publication.dart';

class Certification extends StatefulWidget {
  static final String certificationId = '/certification';
  @override
  _CertificationState createState() => _CertificationState();
}

class _CertificationState extends State<Certification> {
  final db = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();
  int selectedRadio;
  final certificateController = TextEditingController();
  final organisationController = TextEditingController();
  final certificateIdController = TextEditingController();
  final certificateUrlController = TextEditingController();
  final issueDateController = TextEditingController();
  final expiryDateController = TextEditingController();

  List<FocusNode> _focusNode;
  bool _isChecked = false;
  bool navigateToPage = false;
  @override
  void initState() {
    super.initState();
    selectedRadio = 1;
    _focusNode = new List(6);
    _focusNode[0] = FocusNode();
    _focusNode[1] = FocusNode();
    _focusNode[2] = FocusNode();
    _focusNode[3] = FocusNode();
    _focusNode[4] = FocusNode();
    _focusNode[5] = FocusNode();
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
                      onPressed: () {
                        Navigator.pushNamed(context, UserProfile.userProfileId);
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
                        'Add Certification',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: AccomplishmentButtons(),
                ),
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
                          'Certification',
                          style:
                              TextStyle(color: Color.fromRGBO(79, 67, 154, 1)),
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
                              setState(() {
                                navigateToPage = true;
                              });
                              if (navigateToPage) {
                                Navigator.pushNamed(context, Patent.patentId);
                              }
                            },
                            activeColor: Color.fromRGBO(79, 67, 154, 1),
                          ),
                        ),
                        Text(
                          'Patent',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
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
                    focusNode: _focusNode[0],
                    enableSuggestions: true,
                    controller: certificateController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Your Certification/Course Name";
                      }
                      return null;
                    },
                    onTap: () {
                      setState(() {
                        FocusScope.of(context).requestFocus(_focusNode[0]);
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Certification/Course Name *",
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
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Your Issuing Organisation/Institute";
                      }
                      return null;
                    },
                    onTap: () {
                      setState(() {
                        FocusScope.of(context).requestFocus(_focusNode[1]);
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Issuing Organisation/Institute *",
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
                    controller: certificateIdController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onTap: () {
                      setState(() {
                        FocusScope.of(context).requestFocus(_focusNode[2]);
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Certificate ID",
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
                    controller: certificateUrlController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onTap: () {
                      setState(() {
                        FocusScope.of(context).requestFocus(_focusNode[3]);
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Certificate URL",
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
                            controller: issueDateController,
                            keyboardType: TextInputType.text,
                            keyboardAppearance: Brightness.dark,
                            onTap: () {
                              setState(() {
                                FocusScope.of(context)
                                    .requestFocus(_focusNode[4]);
                              });
                            },
                            decoration: InputDecoration(
                                labelText: "Issue Date",
                                labelStyle: TextStyle(
                                    color: _focusNode[4].hasFocus
                                        ? Color.fromRGBO(79, 67, 154, 1)
                                        : Colors.grey),
                                border: const OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(79, 67, 154, 1))),
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
                            focusNode: _focusNode[5],
                            enabled: !_isChecked,
                            enableSuggestions: true,
                            controller: expiryDateController,
                            keyboardType: TextInputType.text,
                            keyboardAppearance: Brightness.dark,
                            onTap: () {
                              setState(() {
                                FocusScope.of(context)
                                    .requestFocus(_focusNode[5]);
                              });
                            },
                            decoration: InputDecoration(
                                labelText: "Expiry Date",
                                labelStyle: TextStyle(
                                    color: _focusNode[5].hasFocus
                                        ? Color.fromRGBO(79, 67, 154, 1)
                                        : Colors.grey),
                                border: const OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(79, 67, 154, 1))),
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
                      'No Expiry Date',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    )
                  ],
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
                        await db.collection("certification").add({
                          'certification': certificateController.text,
                          'issuing_organisation': organisationController.text,
                          'certificated_id': certificateIdController.text,
                          'certificate_url': certificateUrlController.text,
                          'issue_date': issueDateController.text,
                          'expiry_date': expiryDateController.text,
                          'no_expiry_date': _isChecked
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
                  height: 130,
                )
              ])
            ])));
  }
}
