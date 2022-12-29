import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 40.0, color: Colors.orangeAccent)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          // 目前 primaryColor 與 accentColor 於此修改
          // primary: Colors.brown,
          secondary: Colors.purple,
        ),
      ),
      home: InputPage(),
    );
  }
}

// class InputPage extends StatefulWidget {
//   @override
//   _InputPageState createState() => _InputPageState();
// }
//
// class _InputPageState extends State<InputPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('BMI CALCULATOR'),
//       ),
//       body: Center(
//         child: Text('Body Text'),
//       ),
//       floatingActionButton: Theme(
//         data: ThemeData(
//             colorScheme:
//                 ColorScheme.fromSwatch().copyWith(secondary: Colors.red)),
//         child: FloatingActionButton(
//           onPressed: () {},
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
