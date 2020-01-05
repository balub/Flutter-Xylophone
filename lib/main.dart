import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                FlatButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    playSound(1);
                  },
                ),
                FlatButton(
                  color: Colors.blueAccent,
                  onPressed: () {
                    playSound(2);
                  },
                ),
                FlatButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    playSound(3);
                  },
                ),
                FlatButton(
                  color: Colors.yellowAccent,
                  onPressed: () {
                    playSound(4);
                  },
                ),
                FlatButton(
                  color: Colors.orangeAccent,
                  onPressed: () {
                    playSound(5);
                  },
                ),
                FlatButton(
                  color: Colors.pinkAccent,
                  onPressed: () {
                    playSound(6);
                  },
                ),
                FlatButton(
                  color: Colors.indigoAccent,
                  onPressed: () {
                    playSound(7);
                  },
                ),
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
}
