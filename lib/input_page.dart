import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'ReuseClass.dart';

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
