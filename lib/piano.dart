import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    Future<void> playSound(int soundNum) async {
      await player.stop();
      await player.play(AssetSource('note$soundNum.wav'));
    }

    Expanded musicBar ({required int soundNum, required Color color}){
      return Expanded(
        child: MaterialButton(
          color:color,
          padding: const EdgeInsets.all(0.0),
          onPressed: () async {
            await player.stop();
            await player.play(AssetSource('note$soundNum.wav'));
          },
          child: const Text('Click'),
        ),
      );
    }

    return MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                musicBar(soundNum:1,color: Colors.red),
                musicBar(soundNum:2,color: Colors.orange),
                musicBar(soundNum:3,color: Colors.yellow),
                musicBar(soundNum:4,color: Colors.green),
                musicBar(soundNum:5,color: Colors.blue),
                musicBar(soundNum:6,color: Colors.indigo),
                musicBar(soundNum:7,color: Colors.purple),

              ],
            ),
          ),
        ));
  }
}


