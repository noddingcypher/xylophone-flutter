import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({color, noteNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNum);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, noteNum: 1),
              buildKey(color: Colors.orange, noteNum: 2),
              buildKey(color: Colors.yellow, noteNum: 3),
              buildKey(color: Colors.green, noteNum: 4),
              buildKey(color: Colors.blue, noteNum: 5),
              buildKey(color: Colors.blue.shade900, noteNum: 6),
              buildKey(color: Colors.deepPurple, noteNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
