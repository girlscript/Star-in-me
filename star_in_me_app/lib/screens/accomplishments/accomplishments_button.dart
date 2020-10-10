import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:star_in_me_app/screens/accomplishments/awards.dart';
import 'package:star_in_me_app/screens/accomplishments/certification.dart';
import 'package:star_in_me_app/screens/accomplishments/education.dart';
import 'package:star_in_me_app/screens/accomplishments/work_experience.dart';

class AccomplishmentButtons extends StatelessWidget {
  final String work,education,certification,awards;
  const AccomplishmentButtons({Key key, this.work, this.education, this.certification, this.awards}) : super(key: key);@override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, WorkExperience.workExperienceId);
            },
            child: SvgPicture.asset(
              work,
              height: 45.0,
              width: 45.0,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Education.educationId);
              },
              child: SvgPicture.asset(
                education,
                height: 45.0,
                width: 45.0,
              )),
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Certification.certificationId);
              },
              child: SvgPicture.asset(
                certification,
                height: 45.0,
                width: 45.0,
              )),
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Awards.awardsId);
              },
              child: SvgPicture.asset(
                awards,
                height: 45.0,
                width: 45.0,
              )),
        ),
      ],
    );
  }
}

