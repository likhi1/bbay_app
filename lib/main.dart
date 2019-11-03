import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          primaryColor: Color(0xFF257791),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          accentColor: Colors.pink,
          textTheme: TextTheme(
            body1: TextStyle(color: Color(0xFFFFFFFFF)),
          )),
      home: InputPage(),
    );
  }
}
