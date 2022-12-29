import 'package:flutter/material.dart';

const bottomTextColor = Color(0xFF8D8E98);
const textStyle = TextStyle(fontSize: 18.0, color: bottomTextColor)
class IconContent extends StatelessWidget {
  IconContent(
      this.icon,
      this.cardText,
      );

  final String cardText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: textStyle,
        )
      ],
    );
  }
}
