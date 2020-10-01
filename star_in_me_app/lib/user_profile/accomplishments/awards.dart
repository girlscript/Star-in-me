import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:star_in_me_app/user_profile/accomplishments/accomplishments_button.dart';
import 'package:star_in_me_app/user_profile/accomplishments/certification.dart';
import 'package:star_in_me_app/user_profile/accomplishments/education.dart';
import 'package:star_in_me_app/user_profile/accomplishments/work_exp.dart';


class Awards extends StatefulWidget {
  static final String awardsId = '/awards';
  @override
  _AwardsState createState() => _AwardsState();
}

class _AwardsState extends State<Awards> {
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final issuerController = TextEditingController();
  final issueDateController = TextEditingController();
  final descriptionController = TextEditingController();

  String title,
     issuer,
      issueDate,
      description;
  bool navigateToPage = false;
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
                        'Add Honors & Awards',
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
                  height: 40,
                  child: TextFormField(
                    enableSuggestions: true,
                    controller: titleController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Your Honor/Award Title";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      title = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Honor/Award Title *",
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
                    controller: issuerController,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      issuer = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Issuer",
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
                  height: 210,
                )
              ])
            ])));
  }
}
