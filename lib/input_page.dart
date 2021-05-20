import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const activeCardColor = Color(0xFF1B1B3B);
const double bottomContainerHeight = 80.0;

class _InputPageState extends State<InputPage> {
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
                    colour: activeCardColor,
                    childCard: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.infinity,
                          size: 100.0,
                        ),

                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseCard(colour: activeCardColor),
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

class ReuseCard extends StatelessWidget {
  ReuseCard({@required this.colour, this.childCard});
  final Color colour;
  final Widget childCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
