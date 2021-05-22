import 'package:flutter/material.dart';

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
