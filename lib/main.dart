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
          child: Column( // Row 也可以試試
            // mainAxisSize: MainAxisSize.min, // 主軸對齊
            // verticalDirection: VerticalDirection.up, // 對齊方式 類似flex-direction
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 對齊方式
            // crossAxisAlignment: CrossAxisAlignment.end, // children 為基準對其
            crossAxisAlignment: CrossAxisAlignment.stretch, // stretch 會直接填滿
            children: <Widget>[
              Container(
                height: 100.0,
                // width: 100.0,
                // margin: EdgeInsets.only(left: 50),
                // padding: EdgeInsets.all(20.0),
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(height:20), // 撐開
              Container(
                // width: 300.0,
                height: 100.0,
                color: Colors.pink,
                child: Text('Container2'),
              ),
              Container(
                // width: 100.0,
                height: 100.0,
                color: Colors.red,
                child: Text('Container3'),
              ),
              // Container(
              //   width: double.infinity,
              //   height: 10.0,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
