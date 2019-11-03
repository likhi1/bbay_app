import 'package:flutter/material.dart';

//### Use Flutter OutLine Warp Panel create SeparateClass
class ReuseClass extends StatelessWidget {
  ReuseClass({this.useColor, this.cardChild});
  final Color useColor; // Flutter Type Color
  final Widget cardChild; // Flutter Type  Widget

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
