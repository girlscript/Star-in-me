import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkExperience extends StatefulWidget {
  static final String workExperienceId = '/workExperience';
  @override
  _WorkExperienceState createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  int selectedRadio;
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
          child: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 331.0, right: 19.0, top: 30.0),
                child: FlatButton(
                    onPressed: null,
                    // height: 25.0,
                    // minWidth: 25.0,
                    // padding: EdgeInsets.fromLTRB(331.0, 30.0, 19.0, 629.0),
                    child: SvgPicture.asset(
                      "images/Cancel_line.svg",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Add Work Experience')),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    FlatButton(
                        onPressed: null,
                        child: SvgPicture.asset(
                          'images/Job_line.svg',
                          height: 45.0,
                          width: 45.0,
                        )),
                    FlatButton(
                        onPressed: null,
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
              Row(children: [
                Flexible(
                    child: RadioListTile(
                        value: 1,
                        groupValue: selectedRadio,
                      title: Text('Work'),
                        activeColor: Colors.purple,
                      onChanged: (int value) {
                    setSelectedRadio(value);

                  },
                      selected: selectedRadio==1,
                )),
                Flexible(
                  child: RadioListTile(
                    value: 2,
                    groupValue: selectedRadio,
                    title: Text('Volunteer'),
                    activeColor: Colors.purple,
                    onChanged: (int value) {
                      setSelectedRadio(value);
                    },
                     selected: selectedRadio==2
                  ),
                )
              ]),
            ],
          ),
        ],
      )),
    );
  }
}
