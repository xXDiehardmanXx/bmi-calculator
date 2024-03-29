import 'package:flutter/material.dart';
import 'package:bmi_calcuator_app/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        secondaryHeaderColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xFF01041D),
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
      ),
      home: InputPage(),
    );
  }
}
