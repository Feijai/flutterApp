import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inactiveCardColour;
  // Color femaleCardColour = inactiveCardColour;
  //
  // void updateColor(Gender selectedGender) {
  //   selectedGender == Gender.male && maleCardColor == inactiveCardColour
  //       ? maleCardColor = activeCardColor
  //       : maleCardColor = inactiveCardColour;
  //   selectedGender == Gender.female && femaleCardColour == inactiveCardColour
  //       ? femaleCardColour = activeCardColor
  //       : femaleCardColour = inactiveCardColour;
  // }

  Gender? selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('BMI CALCULATOR'),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColour,
                    IconContent(FontAwesomeIcons.mars, 'MALE'),
                    () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColour,
                    IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                    () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                )
              ],
            )),
            Expanded(
              child: ReusableCard(
                  activeCardColor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: textStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: numberTextStyle,
                          ),
                          Text(
                            'cm',
                            style: textStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: const Color(0xFF8D8E98),
                          activeTickMarkColor: Colors.white,
                          thumbColor: const Color(0xFFEB1555),
                          overlayColor: const Color(0x29EB1555),
                          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0)
                        ),
                        child: Slider(
                          value:height.toDouble(),
                          min: 120.0,
                          max: 250.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height=newValue.toInt();
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  () {}),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  // Expanded(
                  //   child: ReusableCard(activeCardColor,
                  //       IconContent(FontAwesomeIcons.venus, 'FEMALE')),
                  // ),
                  // Expanded(
                  //   child: ReusableCard(activeCardColor,
                  //       IconContent(FontAwesomeIcons.venus, 'FEMALE')),
                  // )
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
