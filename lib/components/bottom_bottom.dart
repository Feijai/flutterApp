import 'package:flutter/material.dart';

import '../constants.dart';

class BottomBottom extends StatelessWidget {
  BottomBottom({required this.onTap, required this.buttonTitle});

  final void Function()? onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // {
      //   Navigator.push(context,
      //       MaterialPageRoute(builder: (context) => ResultsPage()));
      // },
      child: Container(
        color: bottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
            child: Text(
              buttonTitle,
              style: largeButtonTextStyle,
            )),
      ),
    );
  }
}