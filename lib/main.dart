import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          leading: const Icon(Icons.diamond),
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  int random(int min ,int max){
    return min+ Random().nextInt(max-min);
  }
  void getDice(){
    setState((){
      leftDice=random(1,7);
      rightDice=random(1,7);
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.all(0),

                  ),
                  onPressed:getDice,
                  child: Image.asset('assets/dice$leftDice.png'),
                ),
              )
          ),
          const SizedBox(width:20.0),
          Expanded(
            // flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  padding: const EdgeInsets.all(0.0),
                  onPressed: (){
                    getDice();
                  },
                  child: Image.asset('assets/dice$rightDice.png'),
                ),
              ))
        ],
      ),
    );
  }
}











