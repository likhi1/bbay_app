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
  Gender selectedgender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('AppBar Title'),
//      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
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
                      child: ReuseClass(
                        onPress: () {
                          setState(() {
                            selectedgender = Gender.male;
                          });
                        },
                        cardColor: selectedgender == Gender.male
                            ? kActiveCardColor
                            : kInactiveClassColor,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.mars, label: ' Male ชาย '),
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
                    child: ReuseClass(
                      onPress: () {
                        setState(() {
                          selectedgender = Gender.male;
                        });
                      },
                      cardColor: selectedgender == Gender.female
                          ? kActiveCardColor
                          : kInactiveClassColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, label: ' Female  หญิง'),
                    ),
                  ),
                ],
              )),
            ],
          )),
          Expanded(
            child: ReuseClass(
              cardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Height",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ### fix text on baseline
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    // ### fix text on baseline
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  //### Custom Theam for Slide
                  SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape:
                      RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape:
                       RoundSliderOverlayShape(overlayRadius: 30.0),
                   ),
                    child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFef2177),
                    inactiveColor: Color(0xFFafacad),
                    onChanged: (double newValue) {
                      // print("newValue");
                      height = newValue.round();
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReuseClass(
              cardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: new ReuseClass(
                  cardColor: kActiveCardColor,
                ),
              ),
              Expanded(
                child: new ReuseClass(
                  cardColor: kActiveCardColor,
                ),
              ),
              Expanded(
                child: new ReuseClass(
                  cardColor: kActiveCardColor,
                ),
              ),
              Expanded(
                child: new ReuseClass(
                  cardColor: kActiveCardColor,
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
