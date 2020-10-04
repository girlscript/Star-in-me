import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:star_in_me_app/screens/accomplishments/certification.dart';
import 'package:star_in_me_app/screens/accomplishments/education.dart';
import 'package:star_in_me_app/screens/accomplishments/work_experience.dart';

class AccomplishmentButtons extends StatefulWidget {
  @override
  _AccomplishmentButtonsState createState() => _AccomplishmentButtonsState();
}

class _AccomplishmentButtonsState extends State<AccomplishmentButtons> {
  // String workSelected='images/job-line-blue-fill.svg';



  // String educationSelected='images/Education-line-fill.svg';


  // String certificationSelected='images/Certification-Fill.svg';


  // String awardSelected='images/Awards-fill.svg';
  String work,education,certification,award;

  @override
  void initState() {
    super.initState();
     work = 'images/Job_line.svg';
    education = 'images/Education-line.svg';
    certification = 'images/Certification-Line.svg';
    award = 'images/Awards_line.svg';
  }
  // // String work = workUnselected;
  // String education,certification,award;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, WorkExperience.workExperienceId);
            setState(() {
              this.work= 'images/job-line-blue-fill.svg';
            });
          },
          child: SvgPicture.asset(
            this.work,
            height: 45.0,
            width: 45.0,
          ),
        ),
        FlatButton(
            onPressed: () {
              setState(() {
                education = 'images/Education-line-fill.svg';
              });
              Navigator.pushNamed(context, Education.educationId);
            },
            child: SvgPicture.asset(
              education,
              height: 45.0,
              width: 45.0,
            )),
        FlatButton(
            onPressed: () {
              setState(()  {
              certification = 'images/Certification-Fill.svg';
              });
              Navigator.pushNamed(context, Certification.certificationId);
            },
            child: SvgPicture.asset(
              certification,
              height: 45.0,
              width: 45.0,
            )),
        FlatButton(
            onPressed: () {
              setState(() {
                award = 'images/Awards-fill.svg';
              });
              // Navigator.pushNamed(context, Awards.awardsId);
            },
            child: SvgPicture.asset(
              award,
              height: 45.0,
              width: 45.0,
            )),
      ],
    );
  }
}
