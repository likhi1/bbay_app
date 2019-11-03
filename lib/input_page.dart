import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseClass.dart';
import 'constants.dart';

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
//  Color maleCardColor = kInactiveClassColor;
//  Color femaleCardColour = kInactiveClassColor;

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
                  useColor: kActiveCardColor,
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: new ReuseClass(
                  useColor: kActiveCardColor,
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                // ### Warp Widget Or Remove By Alt+ Enter
                child: GestureDetector(
                  onTap: () {
                    //print('now onTab on Men' );
                    setState(() {
                      selectedgender = Gender.male;
                    });
                  },
                  child: new ReuseClass(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    useColor: selectedgender == Gender.male
                        ? kActiveCardColor
                        : kInactiveClassColor,
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
                // ### Warp Widget Or Remove By Alt+ Enter
                child: new ReuseClass(
                  onPress: () {
                    setState(() {
                      selectedgender = Gender.male;
                    });
                  },
                  useColor: selectedgender == Gender.female
                      ? kActiveCardColor
                      : kInactiveClassColor,
                  cardChild: new IconContent(
                      icon: FontAwesomeIcons.venus, label: 'Sex Female ไทย'),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: new ReuseClass(
                  useColor: kActiveCardColor,
                ),
              ),
              Expanded(
                child: new ReuseClass(
                  useColor: kActiveCardColor,
                ),
              ),
              Expanded(
                child: new ReuseClass(
                  useColor: kActiveCardColor,
                ),
              ),
              Expanded(
                child: new ReuseClass(
                  useColor: kActiveCardColor,
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
