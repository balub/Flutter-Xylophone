import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(1, Colors.red),
                buildKey(2, Colors.blue),
                buildKey(3, Colors.green),
                buildKey(4, Colors.yellow),
                buildKey(5, Colors.orange),
                buildKey(6, Colors.pink),
                buildKey(7, Colors.purpleAccent),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Container buildKey(int key, Color color) {
    return Container(
      child: Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(key);
          },
        ),
      ),
    );
  }
}
