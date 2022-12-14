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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/lufy.png'),
                backgroundColor: Colors.white,
              ),
              Text("Luffy D Monkey",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Cubic',
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  )),
              Text("i am a monkey ",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'SourceSansPro',
                    color: Colors.grey,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 50.0,
                child: Divider(
                  thickness: 1,
                    color: Colors.teal.shade100
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.phone_android,
                        color: Colors.pink,
                        size: 50.0,
                        semanticLabel: 'heart',
                      ),
                      title: Text(
                        '09351234567',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 25.0,
                          fontFamily: 'Cubic',
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ),
              Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.flood,
                        color: Colors.teal[900],
                        size: 50.0,
                        semanticLabel: 'heart',
                      ),
                      title: Text('火星街京都三年阪二段66號',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 20.0,
                            fontFamily: 'Cubic',
                            fontWeight: FontWeight.bold,
                          )))),
            ],
          ),
        ),
      ),
    );
  }
}
