import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            // Row 也可以試試
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/lufy.png'),
                backgroundColor: Colors.white,
              ),
              Text("Luffy D Monkey",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'C',
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
