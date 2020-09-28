import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccomplishmentButtons extends StatefulWidget {
  @override
  _AccomplishmentButtonsState createState() => _AccomplishmentButtonsState();
}

class _AccomplishmentButtonsState extends State<AccomplishmentButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          FlatButton(
              onPressed: null,
              child: SvgPicture.asset('images/Job_line.svg')
          ),
          FlatButton(
              onPressed: null,
              child: SvgPicture.asset('images/Education-line.svg')
          ),
          FlatButton(
              onPressed: null,
              child: SvgPicture.asset('images/Certification-Line.svg')
          ),
          FlatButton(
              onPressed: null,
              child: SvgPicture.asset('images/Awards_line.svg')
          ),
        ],
      ),
    );
  }
}
