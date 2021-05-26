import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuse_card.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;

  void updateCardColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColor == kInactiveCardColor) {
        maleCardColor = kActiveCardColor;
        femaleCardColor = kInactiveCardColor;
      } else
        maleCardColor = kInactiveCardColor;
    } else if (gender == Gender.female) {
      if (femaleCardColor == kInactiveCardColor) {
        femaleCardColor = kActiveCardColor;
        maleCardColor = kInactiveCardColor;
      } else
        femaleCardColor = kInactiveCardColor;
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
                  child: ReuseCard(
                    colour: maleCardColor,
                    onPress: () {
                      setState(() {
                        updateCardColor(Gender.male);
                      });
                    },
                    childCard: IconContent(
                      iconContent: FontAwesomeIcons.mars,
                      iconSize: 100.0,
                      textContent: "Male",
                      textSize: 24,
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    colour: femaleCardColor,
                    onPress: () {
                      setState(() {
                        updateCardColor(Gender.female);
                      });
                    },
                    childCard: IconContent(
                      iconContent: FontAwesomeIcons.venus,
                      iconSize: 100.0,
                      textContent: "Female",
                      textSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseCard(
              colour: kActiveCardColor,
              childCard: Text,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ReuseCard(colour: kActiveCardColor),
                ),
                Expanded(
                  child: ReuseCard(
                    colour: kActiveCardColor,
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
            height: kBottomContainerHeight,
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          ),
        ],
      ),
    );
  }
}
