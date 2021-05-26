import 'package:flutter/material.dart';
class IconContent extends StatelessWidget {
  IconContent(
      {this.iconContent, this.iconSize, this.textContent, this.textSize});
  final IconData iconContent;
  final String textContent;
  final double textSize;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconContent,
          size: iconSize,
          color: Colors.cyanAccent,
        ),
        Text(
          textContent,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: textSize,
          ),
        ),
      ],
    );
  }
}