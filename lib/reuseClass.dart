import 'package:flutter/material.dart';

//### Use Flutter OutLine Warp Panel create SeparateClass
class ReuseClass extends StatelessWidget {
  ReuseClass({this.cardColor, this.cardChild, this.onPress});
  final Color cardColor; // Flutter Type Color
  final Widget cardChild; // Flutter Type  Widget
  final Function onPress; // Flutter Type  Function

  @override
  Widget build(BuildContext context) {
    //### support multi event Gesture
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 1.0),
        decoration: BoxDecoration(
          color: cardColor, // ### use inside BoxDecoration
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
