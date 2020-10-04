import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:star_in_me_app/screens/accomplishments/accomplishments_button.dart';
import 'package:star_in_me_app/screens/accomplishments/patent.dart';
import 'package:star_in_me_app/screens/accomplishments/publication.dart';



class Certification extends StatefulWidget {
  static final String certificationId = '/certification';
  @override
  _CertificationState createState() => _CertificationState();
}

class _CertificationState extends State<Certification> {
  final _formKey = GlobalKey<FormState>();
  int selectedRadio;
  final certificateController = TextEditingController();
  final organisationController = TextEditingController();
  final certificateIdController = TextEditingController();
  final certificateUrlController = TextEditingController();
  final issueDateController = TextEditingController();
  final expiryDateController = TextEditingController();

  String certificate,
      organisation,
      certificateId,
      certificateUrl,
      issueDate,
      expiryDate;
  bool _isChecked = false;
  bool navigateToPage = false;
  @override
  void initState() {
    super.initState();
    selectedRadio = 1;
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
                  Expanded(
                      child: RadioListTile(
                        value: 1,
                        groupValue: selectedRadio,
                        title: Text('Certification'),
                        activeColor: Color.fromRGBO(79, 67, 154, 1),
                        onChanged: (int value) {
                          setSelectedRadio(value);
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
                        setState(() {
                          navigateToPage = true;
                        });
                        if (navigateToPage) {
                          Navigator.pushNamed(context, Patent.patentId);
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
                    controller: certificateController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Your Certification/Course Name";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      certificate = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Certification/Course Name *",
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
                    controller: organisationController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Your Issuing Organisation/Institute";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      organisation = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Issuing Organisation/Institute*",
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
                    controller: certificateIdController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      certificateId = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Certificate ID",
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
                    controller: certificateUrlController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      certificateUrl= value;
                    },
                    decoration: InputDecoration(
                      labelText: "Certificate URL",
                      border: const OutlineInputBorder(),
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
                        height: 40,
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
                          controller: expiryDateController,
                          keyboardType: TextInputType.text,
                          keyboardAppearance: Brightness.dark,
                          onChanged: (value) {
                            expiryDate = value;
                          },
                          decoration: InputDecoration(
                              labelText: "Expiry Date",
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
                  height: 130,
                )
              ])
            ])));
  }
}
