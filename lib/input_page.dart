import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuse_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const activeCardColor = Color(0xFF3A3A82);
const inactiveCardColor = Color(0xFF092442);
const double bottomContainerHeight = 80.0;

enum Gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateCardColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else
        maleCardColor = inactiveCardColor;
    } else if (gender == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else
        femaleCardColor = inactiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCardColor(1);
                        print("Pressed 1");
                      });
                    },
                    child: ReuseCard(
                      colour: maleCardColor,
                      childCard: IconContent(
                        iconContent: FontAwesomeIcons.mars,
                        iconSize: 100.0,
                        textContent: "Male",
                        textSize: 24,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCardColor(2);
                        print("Pressed 2");
                      });
                    },
                    child: ReuseCard(
                      colour: femaleCardColor,
                      childCard: IconContent(
                        iconContent: FontAwesomeIcons.venus,
                        iconSize: 100.0,
                        textContent: "Female",
                        textSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseCard(colour: activeCardColor),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ReuseCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReuseCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF430748),
              borderRadius: BorderRadius.circular(100),
            ),
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          ),
        ],
      ),
    );
  }
}
