import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuse_card.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const activeCardColor = Color(0xFF1B1B3B);
const inactiveCardColor = Color(0xFF313149);
const double bottomContainerHeight = 80.0;

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  // void updateCardColor(int gender){
  //   if(gender == 1){
  //     if(maleCardColor == inactiveCardColor){
  //       maleCardColor = activeCardColor;
  //     }
  //   else{
  //       maleCardColor = inactiveCardColor;
  //     }
  //   else{
  //     if(femaleCardColor == inactiveCardColor){
  //       femaleCardColor = activeCardColor;
  //     }
  //     else{
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }
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
                    onTap:(){

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



