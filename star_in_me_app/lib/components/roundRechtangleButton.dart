import 'package:flutter/material.dart';

class RoundRectangleButton extends StatelessWidget {
  RoundRectangleButton(
      {@required this.onPressed,
      @required this.child,
      @required this.fillColor,
      @required this.textColor,
      @required this.borderColor});
  final Function onPressed;
  final Widget child;
  final Color fillColor;
  final Color textColor;
  final borderColor;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      disabledElevation: 50.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(2.0),
      ),
      onPressed: onPressed,
      child: child,
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: textColor,
      ),
      fillColor: fillColor,
    );
  }
}
