import 'package:flutter/material.dart';

class ReuseClass extends StatelessWidget {
  ReuseClass({this.useColor, this.cardChild});
  final Color useColor; // real type
  final Widget cardChild; //

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 1.0),
      decoration: BoxDecoration(
        color: useColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
