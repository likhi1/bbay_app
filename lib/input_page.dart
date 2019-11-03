import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF18adad);
const bottomContainerColor = Color(0xFF12e5e5);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('AppBar Title'),
//      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: new ReuseClass(
                  useColor: activeCardColor,
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: new ReuseClass(
                  useColor: activeCardColor,
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: new ReuseClass(
                  useColor: activeCardColor,
                  cardChild: new IconContent(
                      icon: FontAwesomeIcons.mars, label: 'Male'),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: new ReuseClass(
                  useColor: activeCardColor,
                  cardChild: new IconContent(
                      icon: FontAwesomeIcons.mars, label: 'Wemen'),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: new ReuseClass(
                  useColor: activeCardColor,
                ),
              ),
              Expanded(
                child: new ReuseClass(
                  useColor: activeCardColor,
                ),
              ),
              Expanded(
                child: new ReuseClass(
                  useColor: activeCardColor,
                ),
              ),
              Expanded(
                child: new ReuseClass(
                  useColor: activeCardColor,
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

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
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ],
    );
  }
}

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
