import 'package:flutter/material.dart';
import 'constants.dart';

const labelTextStyle = TextStyle(
  fontSize: 25.0,
  color: Color(0xFFFFFFFF),
  fontFamily: 'Book_Akhanake',
);

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
