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
          child: Row( // Row 也可以試試
            // mainAxisSize: MainAxisSize.min, // 主軸對齊
            // verticalDirection: VerticalDirection.up, // 對齊方式 類似flex-direction
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // 對齊方式
            // crossAxisAlignment: CrossAxisAlignment.end, // children 為基準對其
            crossAxisAlignment: CrossAxisAlignment.center, // stretch 會直接填滿
            children: <Widget>[
              Container(
                width: 100.0,
                height: double.infinity,
                // margin: EdgeInsets.only(left: 50),
                // padding: EdgeInsets.all(20.0),
                color: Colors.red,
                child: Text('Container 1'),
              ),
              Container(
                width: 100.0,
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color:Colors.yellow
                    ),
                    SizedBox(height:5),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color:Colors.green
                    ),
                  ],
                ),
              ),
              Container(
                width: 100.0,
                height: double.infinity,
                color: Colors.blue,
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
