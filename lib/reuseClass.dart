import 'package:flutter/material.dart';

//### Use Flutter OutLine Warp Panel create SeparateClass
class ReuseClass extends StatelessWidget {
  ReuseClass({this.useColor, this.cardChild, this.onPress});
  final Color useColor; // Flutter Type Color
  final Widget cardChild; // Flutter Type  Widget
  final Function onPress; // Flutter Type  Function

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        onTap: onPress,
        child: cardChild,
        margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 1.0),
        decoration: BoxDecoration(
          color: useColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
