import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseClass.dart';

const bottomContainerHeight = 80.0;
const inactiveClassColor = Color(0xFF95979b);
const activeCardColor = Color(0xFF18adad);
const bottomContainerColor = Color(0xFF12e5e5);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

// 1 = male , 2 = female
class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveClassColor;
  Color femaleCardColour = inactiveClassColor;

  Gender selectedgender;

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
                child: GestureDetector(
                  onTap: () {
                    //print('now onTab on Men' );
                    setState(() {
                      selectedgender = Gender.male;
                    });
                  },
                  child: new ReuseClass(
                    useColor: selectedgender == Gender.male
                        ? activeCardColor
                        : inactiveClassColor,
                    cardChild: new IconContent(
                        icon: FontAwesomeIcons.mars, label: 'Sex Male'),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                // Use WigetWarp SortCut Warp Widget GestureDetector
                child: GestureDetector(
                  onTap: () {
                    //print('now onTab on Wemen' );
                    setState(() {
                      selectedgender = Gender.female;
                    });
                  },
                  child: new ReuseClass(
                    useColor: selectedgender == Gender.female
                        ? activeCardColor
                        : inactiveClassColor,
                    cardChild: new IconContent(
                        icon: FontAwesomeIcons.venus, label: 'Sex Female'),
                  ),
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
