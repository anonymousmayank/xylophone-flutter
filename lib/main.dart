import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int noteNumber) {
    player.play('note$noteNumber.wav');
  }

  Widget buildKey({int noteNumber, Color keyColor}){
    return Expanded(
                child: FlatButton(
                  onPressed: () {
                    playSound(noteNumber);
                  },
                  child: Text(''),
                  color: keyColor,
                ),
              );
  } 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(noteNumber: 1, keyColor: Colors.red),
              buildKey(noteNumber: 2, keyColor: Colors.orange),
              buildKey(noteNumber: 3, keyColor: Colors.yellow),
              buildKey(noteNumber: 4, keyColor: Colors.green),
              buildKey(noteNumber: 5, keyColor: Colors.teal),
              buildKey(noteNumber: 6, keyColor: Colors.blue),
              buildKey(noteNumber: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
