import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: const Icon(Icons.diamond),
          title: const Text('ASK ME SOMETHING'),
          backgroundColor: Colors.blue.shade900,
        ),
        body:const BallPage()
    ),
  ),
);


class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int page =1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              onPressed: () { setState(() {
                page = Random().nextInt(5) + 1 ;
              }); },
              child: Image.asset("assets/ball$page.png"),
            )
        ),

        )
    );
  }
}

