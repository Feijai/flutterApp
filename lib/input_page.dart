import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('BMI CALCULATOR'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(activeCardColor,
                      IconContent(FontAwesomeIcons.mars, 'MALE')),
                ),
                Expanded(
                  child: ReusableCard(activeCardColor,
                      IconContent(FontAwesomeIcons.venus, 'FEMALE')),
                )
              ],
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(activeCardColor,IconContent(FontAwesomeIcons.venus, 'FEMALE')),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(activeCardColor,IconContent(FontAwesomeIcons.venus, 'FEMALE')),
                  ),
                  Expanded(
                    child: ReusableCard(activeCardColor,IconContent(FontAwesomeIcons.venus, 'FEMALE')),
                  )
                ],
              ),
            ),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

